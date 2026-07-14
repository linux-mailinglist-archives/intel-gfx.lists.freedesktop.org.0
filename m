Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Tg0UGnZVVmpP3gAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 129587566D8
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2026 17:27:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fTL8BiDk;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F91E10EDC8;
	Tue, 14 Jul 2026 15:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2137C10EDCD;
 Tue, 14 Jul 2026 15:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784042866; x=1815578866;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ThukghjcxPfrlM00gnyJxLq5XRvl2k543DCyT6Szbsc=;
 b=fTL8BiDkVQWkxy6XRPKAVnc1UObt4Cytv537l3H0zh5tqcSDEx1cRcWd
 YH9ob8mY7ZU0BmQEeuYccNSI/QpcWdAQ2YdYq6N2ogOXP8zlElFbPIlZY
 gte/NJg/imIMLOYLiMY/+Jbn+QG3UP1ipxJ7wJHyN46NdG4x2LP+n2aWB
 +SGBxuiD6IlsgPZgrRx1zgAQNkiyTiSo6DTsdUDub5hYWfdZ5AQiyBt+g
 i6RnBYIjY3pQD0ElaA82qo+4rli2tKGsVoN8aQ+zQ5hh14CIbd9Cz09ck
 x4E2s2yjOVw+TBbDHN9x/WypAuawfvD2+nhCGREIv7tGvGfelu07mRebR w==;
X-CSE-ConnectionGUID: k//jaGyaR0yybb8GIGEUNw==
X-CSE-MsgGUID: TgEufCwERwG0ugOcwff7HA==
X-IronPort-AV: E=McAfee;i="6800,10657,11846"; a="84548025"
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="84548025"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:46 -0700
X-CSE-ConnectionGUID: goZ46L0uQIWVfDhEf/xiRg==
X-CSE-MsgGUID: f9ctAytDQferINEh91CfKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,164,1779174000"; d="scan'208";a="285962092"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2026 08:27:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 14 Jul 2026 08:27:45 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.31) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 14 Jul 2026 08:27:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jTyP3xcbmSil1iAF9tUzhDyHiZQLEEv+0zz3vbVon2cuUQmtxUvrgweq4dZSIUFS54kmIKSQWbbHrEWqYbWb30821+08S/thg07vb5rTWh5mU0JvW6hbmAZrVehWdgURcv1Mq3izHB+XES9KLJcT2MGsQP/RizvhokMb3xNviBRk180fUDlYhnt8W8nARs46ANLMmKMhMCXmp89yyCEtXnCLbJWaJTQNGerISRutpEVgnZ2d8rU+zahIaeV9c7ro3w1IVBdRDj13k2vAh0DGYZIXp8e7anHbvVPdI7YQNJx/3qK+f6k0JKG1OjjXrUuWR1snPq9m28YS7f7lYrRX4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hqEWicacXqeJ3L32rt9bw/OSWbfm1IOMtZKy+xgdIiA=;
 b=ou4pIn8OQjrdyvH58ogxjwddwRBy53zNenU+czCU8M364NjAvIaf4NYce4BaWKS1smQLSk6Yza7/WOaXwQp1V560B3Yc4thGECdSP9iT/Keqb7dqgvxIxB7im075Umrel7wfPhyZ2cHHbgyuVLQHJFPquTCecRfc1uOkuZgoEbC3HPELhqRH3CL9igrxAUWiBTjAbpP0a2uaGAFLrTEM7pjnIUOQtGOUFwWzEaW9yQUpupuvrpD+yOcrI14g6CJqfSs18cysjdeDoKfUAqrSJsfxzld5pGJtppfPdC2zzKwysjgu8IfsnicS5swqCWLYjXGUdMk24LkvGqGGdIH0Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by IA0PR11MB7354.namprd11.prod.outlook.com (2603:10b6:208:434::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.18; Tue, 14 Jul
 2026 15:27:38 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0202.014; Tue, 14 Jul 2026
 15:27:38 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 6/6] drm/i915/dp_tunnel: Add UHBR tunneling support
Date: Tue, 14 Jul 2026 18:27:00 +0300
Message-ID: <20260714152700.555527-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260714152700.555527-1-imre.deak@intel.com>
References: <20260714152700.555527-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF00073CE8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1d1) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|IA0PR11MB7354:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f0333e0-6e16-40a6-0142-08dee1bc701b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: NeUhqWyOAra5JiKYJJJuTRIXvS3Eoe53J0dd9RibWQ5gmb+TpRVkzX+gZ9dhGPc6l8AdohNlr0iq6eUhQLmKWd31FOX/WHahdqX2gLALEU+Bqv4S1xwJhQvmLh0PrbYKqOOchx1y3lGmLlD8HjpVcI1GAAeEtxCATE3uPnnwFR7ziQLW9hbPOmdxkvhRvOf6cfavY7XTbBjV7pB3Nekb0W6TE7FxwxPxilpd80uj59uCQ//RaP31Hsjd6xlGHaBGlpo8mCJ5ufx0H+7v0bF3Ypu65g38SVMPxNjHdrw8UtvwcidgMsswYSEaH8/hDxzXUinZj0CiEIwTNv6djTEwXXu2M0J/sUGNf+E+37nowvpDjiFZBFaJ4PBltW6l4NeQLft6M+YyKNrCf8Q2YxekxmNTaxeEdS1Q2WTDK8zI/tiJu1a+/1M5+xMO88dKX6dv8GHw+LjJYb1NPFFBJoMlXz0meJsoeg5Q9mdUkYz4YeJagCLF25X6j6N8MToqQ8Lxb1MX9UOuTGfSWWhJ4nSINK/R2qB0a6YXLT1PygBSGb/NBQ58RwHND7ou7QgswFUKLlY5JIHt5C3mzXK79EMzDlvcrrOTsYgyhaHOBGDGYy5npNj22sGULv2nX2Q5buxAWp4GfW2emNGsFgf0KkBVe+ESam98CqQB4YmVyh70gAc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d/bZXZq3PGmDyuc/pGviUVFemsbMHNMF5SPuKdJvogG4nC7MwvinTYFdLGZM?=
 =?us-ascii?Q?/xNBUosKuKm0QtjSBrVeJYqdKCuFUOfab/iyzC+dC/PGKCt6ZS2czuvevJNy?=
 =?us-ascii?Q?uTXg3DauuYcbE2gJ3TrT0A6kVJQeDFVRhvAk/RjCjg1rDfRx8I28VSw4UN9k?=
 =?us-ascii?Q?+e5kiOsKaz/FcHFichXlgx/jw2ZaoQhXlpyNxZL1Ww6Bh6RFC1aoTnpFDB6R?=
 =?us-ascii?Q?9xGeL4kIi4lxKcr2TYIMzpf4vV2yaFLT68gH3rgJVl0JXNoSh7WCwTcnGnZV?=
 =?us-ascii?Q?ppyBez0mcL6C1HkC7WLnl30jOmjk2HiKToDrhOWwem3VifIDFZV/0RJoYTPe?=
 =?us-ascii?Q?YQOcyATg8t7e2oWmwR+eSg+bAmLz8pfLJWUFFsDjU3DckaVqkv3zSE3tVGXm?=
 =?us-ascii?Q?cnoV0qxHUUbdXjhZzM27BajIbqO4US95B29vkI0cv8vn6cFyd4mvInzk7bRo?=
 =?us-ascii?Q?PXU0RV+aFcaUtPkHlRR8s7ka1x+Zb0CaBt9sbhpAdjfy3rR7CDk6heNR/e2Q?=
 =?us-ascii?Q?/EaAPQA2JWL/68SApm9L6TyPYprtHRvlMPWG56mjeKKyrLc/V0iUiwA1TrR6?=
 =?us-ascii?Q?hnM37I5LXL+MMc0bqADU4uiUQMe9iMM7B1VmcwVq5dneiX2xD1U0yamc+5DL?=
 =?us-ascii?Q?srDf6jC+LJsLuWL1bfbolYe4lVZkIpFI1513NSIf8UmixL1M6sdmQ8dgvaEQ?=
 =?us-ascii?Q?LbOWCxF/AZpT4ISpVR9YSYDwplT+Baf6G0VyhghbD0vcyh8q5zaFe0R9Y2JQ?=
 =?us-ascii?Q?xIaYW2r9NNkQbkHmPb0KdEoowYoVLuehHEjOkigWXTKNxvYWU/r/bPN+Tx1x?=
 =?us-ascii?Q?RAujkHH+kQXUHQwCUoI2zlP2aCxJQ1NEi/hHwo0c3hRaoUbqTK+CHkBA3Vzr?=
 =?us-ascii?Q?Z/7hornuC/5qmWHI/RrqzGgT0CmBPXdMld5UbY4lKywASuU0EDQwFpZ/wuQC?=
 =?us-ascii?Q?x46U807BIsQD1d51DqNKuuCFCVIZRjCA7cQrYyf017/honVCPctSW6OKBTlZ?=
 =?us-ascii?Q?/CQenJ0M3B6bwYHnWGRtLAiW9lCabG70YBBVFxFESTXqbmm4SFJ0Zz8jrK5k?=
 =?us-ascii?Q?0eA18/zs/+doUWP2Iei75q2CeFvhtt0/uDrrnyIRtLh7JWkt47kS2reiUYk+?=
 =?us-ascii?Q?rYIbsZeMmLeUgIi7KWKlxKvCjED9kLT0WZRq64fldgX5BZZ93XqyEzChjJ6C?=
 =?us-ascii?Q?P5AB63qOu8wtJ0L9eyLvlwxi8x9wFty9B2+erNT3ZIqcbBNdY4dzU7oeldDv?=
 =?us-ascii?Q?3dO62EdBtqRLGzZkDX/3kuhjp1WOEnERXoU242229P0TpB7pcf/uL+DJGrU5?=
 =?us-ascii?Q?piPXuvBwTPbGDN/s3ZEof3mBerv34yB592lyq63TRQ/GFZtWodZ7YrYEgcQc?=
 =?us-ascii?Q?HDJ70ptYuRbqqe6w/y9vbZFpyoymOKbzQ4bg0PqTLrIgj+bzlbB+rHcQOdtD?=
 =?us-ascii?Q?J0wvjouIE/iayhY9pi93gL3Q6mq4FqhbSFyJgUTVdLXhXfMT10g9AxvAGeI2?=
 =?us-ascii?Q?TlcGNoX3rz83Y4YYWCHHMqRZwtvTCOyD41Qp9zA7W+MJIiGCz3Xrwyln7/Eo?=
 =?us-ascii?Q?+F60r+SdQgGVZgcNoh+ytGpfQO/EdePjODHWNPgL7QuLf7vqR6yue04OOsJT?=
 =?us-ascii?Q?i1Ixs4F1SJrS9a4d1WWp6171azDJXeeYc8QAA6cXPhqzJlOL9hhOxsjHhcHE?=
 =?us-ascii?Q?LZ5GtqK9AK1xd6EookYkoCGmZoDTJKRUhqSnK4L6Gjb4zFSik8hPjkwRUDh3?=
 =?us-ascii?Q?EOi4oSLb9Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: lG9/ZLnOQkTKiOd3dtVUpbAQ3rMqN8tn1nlg+DU0uXqlwvNe1CN09FRtULn4gl+7gXJCoB9/iFp4d5Fz67JTrfcmA5qto9zy7ldH6dW6jmZwp2xiMMLSQ59bscsoRd7hNc3v1TT0Qi9TlRhaL117pIPpGoNFJXQ27DFbjiD7je3RrVIrcBGwdii5j2YjuETg/n1TpQqUbq4iJ3LYizTH+L+i7P8ptWDAweahX0sGiPPFUx8d4J+PtJW0j2MN0zxPN+2zgPWsD1ct+tBXheZfe+SbHhXnkak6nhsf/IG88iPOe2tyPFDIp0/WBsJdqnrP3XQWsPhKvUeUPitAwRWgew==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f0333e0-6e16-40a6-0142-08dee1bc701b
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 15:27:38.6008 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KfhsMHL9howDJk8qfUoEqDIk/Esp6ZzOLzGAmXzpTl9gj4fi+VRdlkV4IP0N0VJ+py+X2zb8s3gXmyqC6Xii7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7354
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 129587566D8

Add support for UHBR link rates on Thunderbolt tunneled links.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 37 +++++++++++++++++++++----
 1 file changed, 32 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e0b95fbf7db0a..eab22b161ea1a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -191,6 +191,29 @@ static void intel_dp_set_default_sink_rates(struct intel_dp *intel_dp)
 	intel_dp->num_sink_rates = 1;
 }
 
+static bool dprx_supports_128b132b(struct intel_dp *intel_dp)
+{
+	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
+		return drm_dp_tunnel_128b132b_supported(intel_dp->tunnel);
+	else
+		return drm_dp_128b132b_supported(intel_dp->dpcd);
+}
+
+static u8 dprx_128b132b_link_rates(struct intel_dp *intel_dp, u8 no_bwa_rates)
+{
+	u8 ret;
+
+	if (!intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
+		return no_bwa_rates;
+
+	ret = drm_dp_tunnel_128b132b_dprx_rates(intel_dp->tunnel);
+	static_assert(DP_TUNNELING_10GBPS_PER_LANE_SUPPORT == DP_UHBR10 &&
+		      DP_TUNNELING_13_5GBPS_PER_LANE_SUPPORT == DP_UHBR13_5 &&
+		      DP_TUNNELING_20GBPS_PER_LANE_SUPPORT == DP_UHBR20);
+
+	return ret;
+}
+
 /* update sink rates from dpcd */
 static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
 {
@@ -199,6 +222,7 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
 	};
 	int i, max_rate;
 	int max_lttpr_rate;
+	u8 uhbr_rates = 0;
 
 	if (drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_CAN_DO_MAX_LINK_RATE_3_24_GBPS)) {
 		/* Needed, e.g., for Apple MBP 2017, 15 inch eDP Retina panel */
@@ -224,17 +248,20 @@ static void intel_dp_set_dpcd_sink_rates(struct intel_dp *intel_dp)
 		intel_dp->sink_rates[i] = dp_rates[i];
 	}
 
+	/*
+	 * The following register must be read unconditionally for the later
+	 * DP tunnel 128b132b detection to work, see DP Standard v2.1 5.14.3 .
+	 */
+	drm_dp_dpcd_read_byte(&intel_dp->aux, DP_128B132B_SUPPORTED_LINK_RATES, &uhbr_rates);
+
 	/*
 	 * Sink rates for 128b/132b. If set, sink should support all 8b/10b
 	 * rates and 10 Gbps.
 	 */
-	if (drm_dp_128b132b_supported(intel_dp->dpcd)) {
-		u8 uhbr_rates = 0;
-
+	if (dprx_supports_128b132b(intel_dp)) {
 		BUILD_BUG_ON(ARRAY_SIZE(intel_dp->sink_rates) < ARRAY_SIZE(dp_rates) + 3);
 
-		drm_dp_dpcd_readb(&intel_dp->aux,
-				  DP_128B132B_SUPPORTED_LINK_RATES, &uhbr_rates);
+		uhbr_rates = dprx_128b132b_link_rates(intel_dp, uhbr_rates);
 
 		if (drm_dp_lttpr_count(intel_dp->lttpr_common_caps)) {
 			/* We have a repeater */
-- 
2.49.1

