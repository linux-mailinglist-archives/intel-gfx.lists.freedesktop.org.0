Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sC22FkCu8GkeXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D25485546
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03FE010EC66;
	Tue, 28 Apr 2026 12:55:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WOrQlSiA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 750ED10EC66;
 Tue, 28 Apr 2026 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380923; x=1808916923;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=1+GtdnKT7iK2Kn9XL2gaQFLqk78WbYGZpkkWUwzLbE4=;
 b=WOrQlSiAoEsd34SPerOpi+Ts2nXXlL+PlEJ/rwMEyZxmtfQY9v6A9ZKI
 QJhect6GoyhWl8bno0RI33twNaA8TWPg90neuHSAVuqZFJcGtJUUHRWmZ
 dRDysAHg8JQmgAhnz4yFTmxsZWH4iyxm8gYEWMla446I84423/yfewl13
 7z4zAjrG4JYyNDisKCfxByv3nEpzWP1QC6YUk6lnGm7V4hwGfl7vUSVGQ
 QAvDHktecyFuOZhhd4iZzvrdXep40k2rgvMvk/1fgU4Lpb9Wxvy7wZ+yo
 MXaDx7afd3mqfcIv8ohq/w5j7w4OGTubCowrBAgscgjqG/n/RIM/rMiCh Q==;
X-CSE-ConnectionGUID: BZfFqGtVR1W26iLoeCFbMw==
X-CSE-MsgGUID: rVrMg7LcQ9SlMNIzoEL9/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203305"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203305"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:19 -0700
X-CSE-ConnectionGUID: jOzPELjKRYum6IhJ+fAhfg==
X-CSE-MsgGUID: UoUWby/fQw6OJYo4vuvZ4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244805"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:19 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:18 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:18 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dbMh0/it364uLkOzY0dUF3JkyZ7xukEMwgUoTFKNj0nGyAf7wuSV+5eEUhqiicobJzSNzYdfntbkmqQCPKQScuFNxKuGQOjFrAIO0EbDNAVbSA2qhqb+rVN07L2l9H42nuEFhOhZ7mDa7Wx20ppdZ1/IJqeTRRCCf9fxdVgarfFz6odSG1d3v3rNnIwsz4D/L8pwyPwCMhO6KvuBFwtW3ixZDwZaBn8hgszsXiiSsMbU+MJ3H9qYxcRMPi307+IzaXxsOJYXgOHujB4D/H1/gURcEBDUzs+BREWkEB50gI23gBx5mWOFRxBHWlryo/CnYzcUtKOlm+mYzk9fMJSuhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fxv1S10b84tc1cjxqOsB1UAbNjON6A5zZBkK7xc0DMk=;
 b=k8YU/Hic/0Q7qjJ4k0tO5ao8CYS6hKy7gdWiUexJupEBD9hgUp/7Agrtus8ZQAwIuzGTHXH1anAQLlXU5V/xXLZoOja7EQaFMbaM9h+cAg19MC62n+KnJm2A3b0tg/DTYE4/UAUQbGkEqvc0Kvf1Eje+PoVn9syQP42UOVn5UaEqW2vzCkhfRn5/o/6ianzlVQ/f7v+BIModSlGsSWGLbUKKFhWFZgRaTZFssFiPBLoX569gOG9ZtCixAb2J2p0+HfxPxbjXLZR8Wa6uUgjSlDCos5Ml4yamQr6fBHV0oatLFguIrE4Do/3frIWthTfVAXefmbhfs/xY1fPnPmEWRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:15 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:15 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 078/108] drm/i915/dp_link_caps: Precompute config table before
 update
Date: Tue, 28 Apr 2026 15:51:59 +0300
Message-ID: <20260428125233.1664668-79-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: d5d314c5-204a-4196-a48d-08dea5255463
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: C9JVtPynJKmsntlplCyI9DNoU6Oi3S++MUPzoNqNwODNl54wxsc0dkEP4lkfYjjFRUEfPvm3bMtFxm3YhZMEC1cWeoG3+uqJuYM8Yd52LpwNgCYVJiKhi/xRlEn17CfqAtL713JAemHdZOL/cFKapjcgQZ5P+hMB3gP1CNSGudWRFUR+oCetyKGsmDPeWbRFK3LnzEIrHrJiUkPCmG81XfZ4AqvBmYh8v3Xc1YCnwf3AbYERRiQrw5O3beEGDjlHWFA/Drye84baCRnNxHNxGcgf0vSvl7Zn1ya2ByH6U6fGNuuHjfzbwG5jpDf1DQvbeSdR5yGxIt4P1t3uejf3NtdZn3C9olXG1Auzu3lfBxipM0E9Lyl29b6idKnqs+oeO+PHzd8qHXMO1S8rBWBEXlrM8zS0beLUYlx6XTUYb8SGGywHH6ngHaqt31tMGVpE4ET4lMaQsFes69MZ9hkB9EOVtzXtlesJjcYIcAsd5+7OMcWXmub+N8/ZPdjl+HVHqvIWPDZprPpnAJofusptFDQjP3yEhMMsMzlibnicuEUqTcFU685V6HD9U8AmQWoGbruIWpKiSes3fqlABtiizn+92uZ5oeqbPxReqnxhQqrn4boiFFH5JPFByjzm/Owe4Q4GI+Q+PZyIBRP031iIIcilYQ2ORoNyq8KascUdQAkm1XjpOp7c8VdMSh9w9B6ZK5BXo6zt2Hrv7OD5WmCfr3G/sHvvVoAoGXcl2g7bEw8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pCYrJmRU+u54VYpIM6LRlO0oiCl2igFUnNY68B5dcrtwPoEEsgruMjf9s8St?=
 =?us-ascii?Q?NQBL91doWqQy6WF12Mcua6bhiDxgUACpIaqHC2Y2zMsrNCiz6TpXwfIS1Y22?=
 =?us-ascii?Q?5QRuYarAAQB6+Cjqjcc8jIMq/68xkls1ytsRBb2CQ2A+UAAeylfyblsBrv3u?=
 =?us-ascii?Q?UVbguSVu+mvH+xeWxRKIEHwZlc0w4xjHc3n5Xi38eyxhOgjMTz8ZZR2WyQQ1?=
 =?us-ascii?Q?+BRztCtx4UzUihIshymjQPgHPL6vJ82hz7WvZ8MXeIEJCfeKei0AotVsVnRg?=
 =?us-ascii?Q?gOTj+jNfEuyNdsO8laZqfJKF/8OtNm6VxXiVc1N1gYz5XkX4NGdl3otQX85F?=
 =?us-ascii?Q?F/BobLHo88sv5dw6tL5BQnPHLaYPApYQZgRvMlTtOZAA3/RFxBtIwxFt46bo?=
 =?us-ascii?Q?n4/kVG1vp/1tEhig1ckQADOCcnNMgddNumvb3qfY/Eo+3ZVEM0cGCKOXsGUc?=
 =?us-ascii?Q?oZqo9cHFaojjm6lRkTCCDhaH+6sIMr0Yu2GTZsuT8OXSN1gqMQwfcqs1OEJY?=
 =?us-ascii?Q?hBugry6iaATWEO1pXfsX435/WqTCEKVs+glSUXo+EoFBTqtZQLgLVUb/ND6W?=
 =?us-ascii?Q?1IETm9DJ6vbj1Xf0AvhEnAJT0FHhXTodo4xpUFNJT/hlUa7UAcD76UUmjjbw?=
 =?us-ascii?Q?gMt44n85vnTzS2xhllmjeRFNn60ZxQ3qe2iSfVMuK+HGXOeow9D+mdt0wPJz?=
 =?us-ascii?Q?+B9lEjhLxCC73bJ8767H7AbLG+uV7xEBekXJP1R9PtXoecnr3SkGsjzuaSTM?=
 =?us-ascii?Q?IMWE6tA3F+Tg63LcYWmInFBF7ncurp2ZJj2h4pzO8k0e/a2GI7k/ZfvteeAx?=
 =?us-ascii?Q?WzYm0NjceHByKid00/mEPvH6bJ/ZFqu1I81rZq9MQRMpYpkEHwKK+cTPh4es?=
 =?us-ascii?Q?fCRi7k0v6WKRfLRZlNVsdN/Ishi85OUjIWu12w2nCuXQXAZskqB+HFK1LIHM?=
 =?us-ascii?Q?lhLpZnCdiUUUyaDpWc3N/f+iQ3O9yE0nJIGu4OyOuYN2N84b4IGv6w/kHJ6G?=
 =?us-ascii?Q?IDY87lYYMpJSU2wXMRaF+y6k87lv21tUtirGGM6Tnjqtfj0IO3yqbG441xQt?=
 =?us-ascii?Q?NpfajeSzM8EQScpM73qz+p11vyzqH1ZcUM4YVLrTKNCD+gdeLfIDf30IV/Mj?=
 =?us-ascii?Q?P1fAm71ya77nkTq6xSP883FUDxFto4FgMMuJcIhc9Cnm+ukUXwUHi2Ui1nqS?=
 =?us-ascii?Q?/kE2AIRmZPr0iTYGXXhSnUlORA2TB/wNjx5YOi+Dq6n44vBDPp28uOwL0D2O?=
 =?us-ascii?Q?pIYz99L3JCnobj1wrxHjR5/ym8b4qk7DkKOYpftn9A55bZ8t4pil19pw7Vvr?=
 =?us-ascii?Q?MggbHsZdFH9K6BLr0kQMHY5/q3CC7qbqWF+VO7wmqS5GTUxqGTx0fzAPVHNa?=
 =?us-ascii?Q?lpnLiN3QfW0nZKNUtbsYSzXJ0KR/2Tm/y2MmACASCc6T627eR4RS3gbbjkwz?=
 =?us-ascii?Q?roC8I2236REDP2xafkCEU6dolnP7yTkJRTiLNlao+icdABzCoV1S01hCVtUr?=
 =?us-ascii?Q?76mClIEarPryV3GFOBpb/s2uGN16xWz2//2b0kVbSj1E75dDdCeuC0j+nRHT?=
 =?us-ascii?Q?Tn4doKiJrfo+79D1+tRNctiEw5w5K6xl8wYPbYy2WjOuiG0BfAvyZ3aDk666?=
 =?us-ascii?Q?0R6DZD+GG7lrzWgrMe1JsbT37Ei7PuhVDL0HIY0i9Eysb88Tt6H3o+33Smpf?=
 =?us-ascii?Q?dW2fIsCv1aBQ+8S2QHtITH7PVWg5K3+C9l/mw9npncS0bdJwNZXLruJO2U15?=
 =?us-ascii?Q?YUGLXIdJsQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: vdF/Tc2o7FV0Zz2rDpZbcnOdZInUgHMJdiSpycI3hm6yA3IzrVyqKmynPCJJ5xZhGFfMxVdvsJJopNoQVwNKkoUpj+rC52qb56ahF4csCkUsgyqDDGvwR/I+D42SRH4JVxCN8jmrVsFG6N4hSTtXq1W7aHZmPxlz8XfqXbjob+zOTVa4ZFa/I21htWZ4SUroqVRhieT29v242oMOB5Vy1kdWyDoOk08SYegLsSTON4NLzjqoZ2o2wh1vVvBnCCyddqfjpo/c7fGVyKOD1XUuoMSiu5xLc1ayN4P++qQoMFFK7KUua+ia48hCofdDrLU4Kz+PMdZQhq5RKLaCpzS2DA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d5d314c5-204a-4196-a48d-08dea5255463
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:48.3288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cNazgFYFbk6q/E/sLnTp6ZowxQz8ViqldT5k/4a4ldeQfH+x5a+Jxy+XQOomJuRs3FzMNQBoINXH+1Rmk20XIg==
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
X-Rspamd-Queue-Id: 08D25485546
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

Factor out a function to precompute the link configuration table into a
temporary new_table before committing it to link_caps. This allows a
straightforward comparison with the existing table and enables a
follow-up change to merge the old and new tables as required.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 93 +++++++++++--------
 1 file changed, 52 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index b156b0ff0eedc..65358ec34d44b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -769,6 +769,53 @@ static bool config_tables_match(const struct intel_dp_link_caps_config_table *ta
 	return true;
 }
 
+static bool build_config_table(struct intel_display *display,
+			       const int *rates, int num_rates, int max_lane_count,
+			       struct intel_dp_link_caps_config_table *table)
+{
+	struct intel_dp_link_config_entry *lc;
+	int num_common_lane_configs;
+	int i;
+	int j;
+
+	if (drm_WARN_ON(display->drm, !is_power_of_2(max_lane_count)))
+		return false;
+
+	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(table->rates)))
+		return false;
+
+	num_common_lane_configs = ilog2(max_lane_count) + 1;
+
+	if (drm_WARN_ON(display->drm, num_rates * num_common_lane_configs >
+				    ARRAY_SIZE(table->configs)))
+		return false;
+
+	memset(table, 0, sizeof(*table));
+
+	memcpy(table->rates, rates, num_rates * sizeof(rates[0]));
+	table->num_rates = num_rates;
+	table->max_lane_count = max_lane_count;
+
+	table->num_configs = num_rates * num_common_lane_configs;
+
+	lc = &table->configs[0];
+	for (i = 0; i < num_rates; i++) {
+		for (j = 0; j < num_common_lane_configs; j++) {
+			lc->lane_count_exp = j;
+			lc->link_rate_idx = i;
+
+			lc++;
+		}
+	}
+
+	sort_r(table->configs, table->num_configs,
+	       sizeof(table->configs[0]),
+	       link_config_cmp_by_bw, NULL,
+	       table);
+
+	return true;
+}
+
 /**
  * intel_dp_link_caps_update - rebuild the supported link configuration state
  * @link_caps: link capabilities state
@@ -802,55 +849,19 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 {
 	struct intel_dp *intel_dp = link_caps->dp;
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_dp_link_caps_config_table *table =
-		&link_caps->config_table;
-	struct intel_dp_link_caps_config_table old_table;
+	struct intel_dp_link_caps_config_table new_table;
 	struct intel_dp_link_config old_max_limits =
 		link_caps->max_limits;
-	struct intel_dp_link_config_entry *lc;
 	bool link_params_changed = false;
-	int num_common_lane_configs;
-	int i;
-	int j;
 
-	if (drm_WARN_ON(display->drm, !is_power_of_2(max_lane_count)))
+	if (!build_config_table(display, rates, num_rates, max_lane_count, &new_table))
 		return false;
 
-	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(table->rates)))
-		return false;
-
-	num_common_lane_configs = ilog2(max_lane_count) + 1;
-
-	if (drm_WARN_ON(display->drm, num_rates * num_common_lane_configs >
-				    ARRAY_SIZE(table->configs)))
-		return false;
-
-	old_table = *table;
-
-	memcpy(table->rates, rates, num_rates * sizeof(rates[0]));
-	table->num_rates = num_rates;
-	table->max_lane_count = max_lane_count;
-
-	table->num_configs = num_rates * num_common_lane_configs;
-
-	lc = &table->configs[0];
-	for (i = 0; i < num_rates; i++) {
-		for (j = 0; j < num_common_lane_configs; j++) {
-			lc->lane_count_exp = j;
-			lc->link_rate_idx = i;
-
-			lc++;
-		}
-	}
-
-	sort_r(table->configs, table->num_configs,
-	       sizeof(table->configs[0]),
-	       link_config_cmp_by_bw, NULL,
-	       table);
-
-	if (!config_tables_match(table, &old_table))
+	if (!config_tables_match(&new_table, &link_caps->config_table))
 		link_params_changed = true;
 
+	link_caps->config_table = new_table;
+
 	/*
 	 * A failure could be only due to a bug, the update function handles
 	 * that case by removing all restriction and resetting the max limit
-- 
2.49.1

