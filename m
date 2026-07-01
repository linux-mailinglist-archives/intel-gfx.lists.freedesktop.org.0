Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KD72IiczRWpQ8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3619A6EF463
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=fcKB3RrV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84A9710ED85;
	Wed,  1 Jul 2026 15:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 120E710ED7B;
 Wed,  1 Jul 2026 15:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919972; x=1814455972;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=2PihLmE6h6n0TRz4QpJEhmwLx9bU4qsI+6Ea9mIm3YM=;
 b=fcKB3RrVb7kIJGnpiwrPCXzjHKNmwgKSLhlSqCK8/pXevX3T2KQnXSj5
 DzGtGrqfYWWiNUV34xLVvpaKF2cV5kEfUXGBTO+rAspKrLuWOZgG/qxtQ
 yKUmn8X2C6/Awt6xqhLSLeCpCCovzOFEzsCQ6KxVp3Gg4XaKCg5VBEhfW
 +OUoSsVsttOn3JdulBtlMB9HBhr52dP24C9saBKw1Vyj6cmNXgHayUBkM
 Ym5ugQPkh+v1Hqvdts+KpYm5BQR1uN/GbJICC8DdBSJPW/GPTm0Hup+Xg
 Ra/25d2ker9oacUk/urQtuIEKLSn4yTtgSwBtE3QtL70D9gHmiRVz7dbO g==;
X-CSE-ConnectionGUID: I0Iu/9/hSL+WKFO9m+S7Nw==
X-CSE-MsgGUID: s8YFD428Sp2rl9MH493o+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95040354"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95040354"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:52 -0700
X-CSE-ConnectionGUID: jiOctMcUQDmHXjBdeX9fJw==
X-CSE-MsgGUID: GWoHJbeVQj21mjZZODo1+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="250880944"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:51 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:51 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:51 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.70) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aVOfV1ZBOiyEWDy6N5jkt25afv994DN83+P8Y2lhx/GFdEUc1Bz8olpmpuu4MxEjxwNqATPQET67VTzZ9Wo62Ym83Tla8j5Ca+kHjw1i4UypUUdnQFdeLBBkeifXDpGmcDvlJ5yy6TZqEU4Izao0R7uR5XHujxYo1U8hPUPkmhgRUc+7WqXGxACtTXsFVBJc5r1VCzCTmGRW+j35sLlIDENT6zzr3KwdScYUEc+8v2pmUQMFUT5t4K/98ES3+oh33+m/8rhn4QeYY59X42aRtDw0GH8prFfKxlcdu++J/e5ktZtsUUSme0FLhSdABf8iU13BLAOK/bia7l4qKZVffA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5W49TyANNsAyg1E2hlIindIpm+JStFa8cTIopTaGi3w=;
 b=nDtM3XaPgC7yYwHh3udUcpmeurZFJvqc+umrpeIs5wozzRy+t/Z5ge1AiQABEktIjQkssn0WyHaHiFA/2WYtJNNRwIULEMXP/Fkv/LvPVFT60M3qu74+acAZToqX43nkDVwtC7mIUXoXTrl9/zUirzwhef7datq3vRL2rXHZGlGRnKuhif3jSOpLO8fzuXLncpUyrZ8KcWpaNQC+XSE9s2rnUrBoF66Q5/mzJi+0DE3JSGcNxu1HqdXXhp7+kd1TevNtQoYDrWTNPUKB8CJXnarFwYrZpVMWwSQ+GsvLZ9cuMxIHtJZv847WHCHTY5CnBfGk5zb6P2JPKNLvvSdzxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:48 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:48 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 09/34] drm/i915/dp_link_caps: Re-enable link configurations
 after sink caps change
Date: Wed, 1 Jul 2026 18:31:38 +0300
Message-ID: <20260701153204.4124150-10-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: e66235d4-ad5a-4607-418f-08ded7860151
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|3023799007|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: lKYSp1D2MRVmOwdMSXtDqE9C4caijVFprQ9m3/gwPJFvhZugoZzDCqP23DPlX6fTUlAwP6uivdsc+HXCoa1De1fYGKf4e7DPlh8nVxtB5yrFkQDRN0QXPw9a5K4is5ksMsRs5LzVLLkMQgh5iv51yjicLtV1PV2vxPQ8piuVmsDQ0E0lTKzzQ2i5TRQ7Yvt0BaEi0W0TAd1QbqUD/9m41TialMH3bWrR8kxifD7G8Ef1ZxCr+dGvKR8btePdIjyuJWsSgJtgHFvff4C1nJVe85LdaalbbmAbk9K+ZvabjXc/RQR3sZ/9XtsBFSNtQWvV29av66HLBxchf1GgU3QEFLxNiiSbG775jVXaY3UO1MOawXocAsW7Fo3LI017pJalr+5ZbecVYWtqx28ZoNIteoSMUzBhwJtNaAYtv7qihLN+tra7IvdI4/ZQGyl1fstCgyYQEJlTeWTdKWVheDgh6HoAdcxPvM1qvLCYEvdjf0AEv2+MPnsabMQCSCWAFJ3+JanCRRhA43JMv1anm0MZQDji4t/TF741RcmGyvak7FaePYoJv/sXa1DFu9TvGGg2EX1/EQ70Mh28bKhhuBiJQE31MhyiIwL8Sz6uHbXYqbdt/WxoDQQZJJqUqFVWXvAo/T6GI2Gf2KR7Jp8++8NVB97miMUoR30k7qQLaEJxXH8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(3023799007)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fN6d/vVpTXo2iv1ahXIWX10Ujqevdde/j9cPw15251mMgwyRiJtJ7HLwYnva?=
 =?us-ascii?Q?2p39DhHxMUjZjT0WPA0rIVwkeGm9wvMVfScO1IcQd4VUfetjDkqHZCXBAn+H?=
 =?us-ascii?Q?L2tuU+yk21U27wvzloc8SsnPObvapXdlUytOwMG1+POFLKqjRpXodPIdpZBP?=
 =?us-ascii?Q?+nUiAiHIDrqgGW3K0O5b3y2wKscbq6YNrh9xUD9ElFZvst/zsbIUzMObIwam?=
 =?us-ascii?Q?B1Blf3H1iNNrDDR3XYxmFxOmO5sJz9X2LVFUGbh/hJIGTeysEoJzccRti2b6?=
 =?us-ascii?Q?QuuzxxbfhXi3kD5gqE3uUJMaNoGXig9nQlFqLbUhasNv6rF9nrbUSzWR1WAd?=
 =?us-ascii?Q?0ZJuoLgy3gLQ7pzHnW/PGEvQrKQY2JjKkcZwd70D7KzUt0HNVM0LfgtBSiWb?=
 =?us-ascii?Q?JCpYtmPJvAXbxuJJ1W9h3EORRew6m6YqDVlarPAX3wglN7BOTC+KgTQM3uT7?=
 =?us-ascii?Q?UwFYsjuwhzDMXTwhUf/kb8gv84MU9zYQuJwNzPobfXmvv3EnABWrnNIAczJT?=
 =?us-ascii?Q?ws8T+k8wcrA7obvnl5+iYI/RTqV4Sw4nuBps34mQtAG3agGz0RlKJC85OkJk?=
 =?us-ascii?Q?7VzSA72xs1s8nXOFSkSUsICNBojL1pAnQ2EqYzKNG5A6S45QPC8MsjyBLveM?=
 =?us-ascii?Q?s+GpQuSPyU5XZLo2+VA+rjiLGc8Eb+RgVXQfnev6L3jJIDAQBA7ahrId5bAr?=
 =?us-ascii?Q?qBgsMhizj3UGe0cx65HKuiVhHZ+w93/Grc5NXGXr0+AX6Duiac6YNxxqG0rb?=
 =?us-ascii?Q?Lmshd1PBO4R8VEeNTWGy1RZSsoEMS3L3+Z/k19JLm8u+pCTm6Nct+k7LYMva?=
 =?us-ascii?Q?Jg9TBrZsjTZn9NwivtthYY0E5Tzt5F0paqi2QafO5MX91K165VCXvwA5gWo5?=
 =?us-ascii?Q?ZlkoVVYpKPHp6aRqOwNFbPZsPDlV1HMI7SwzQcH/ivIVbyUwSwdw/wgUxlFf?=
 =?us-ascii?Q?QbpkjjkrizvuS1PiO4xhYcwVHMcclwk8teqQjXx9X3Ly58o3ibPJJIzBzpWW?=
 =?us-ascii?Q?JJEJQHf6nTGGoLCExPbjr8OTYuss7Td+yOKd2gp9aj5mG+mbHWcxH8MD2+hx?=
 =?us-ascii?Q?hUzZtsFHwaAhBlO9nJ3nHPAmRX2Cd/0YT6a4C60DGpFoEkhfmjh3hmrBOjJQ?=
 =?us-ascii?Q?dnCA29j2qBWMamorTPX1SkZbhe66mG9EctrkTd8hs8YfNlr+ixD/l4s8GBeA?=
 =?us-ascii?Q?gCfeDLhMm2JqwJvE5UpPY8U4nnF9yM0Odozr9IBTnAIpNfthLugR8wTb8qig?=
 =?us-ascii?Q?aXwcbd/ZTU/Wxl9OW6w2z6xc/96hTj+Yh+JrYFi0y8g6n1my7TS4WKhIXyp0?=
 =?us-ascii?Q?ADEcwrOjy1mEAczDzqSZOERQpW+F0k/JPt2QZYuW9I/0lDpGkl+wP7RhK0E4?=
 =?us-ascii?Q?KG3VwTe5+g6QdG7mcW/yRcsJ9JSyAs4+YjCHRvpnFRC4zJJ2RTbDDhdIxCWT?=
 =?us-ascii?Q?S8f8zgphpEXKjINlgi3y0ZOjxL5yVAUQ8r0VDGk7BqoajdEJuYXsNBVovNhW?=
 =?us-ascii?Q?ltryEoeyD1Qt8D39yPV7MmI3w0GpmgCN3WnKcotSIpN8JE9gR7mBOo8blXco?=
 =?us-ascii?Q?r5483/bcac72P6hpmSIhy1efn6trbZ25FS27zsc+DFL5EQeNcfzWz8gZsjsQ?=
 =?us-ascii?Q?BjSaa5HUx+gPZiWJwCOg8whNnkHvI/8X7KgJFlHTvjQ+PBi2OvYkFjAiyRb1?=
 =?us-ascii?Q?sjHNuhhr9NZ1VjlOt5p3s6Anfcz5TguwuZkJi+DNy150MXWUN9S3m7/c5vYz?=
 =?us-ascii?Q?3HBiUHg2vA=3D=3D?=
X-Exchange-RoutingPolicyChecked: VsB8pM4cHeC2aLwLoL+wWtD3jRUhaxlPzZumIOPaALDOqM82+mjbspr8LbQ0VUYO2t0cQekmX+4GLtBReX968A19yoJnnR+Rh3rCx3hynWEsbgNYx+vuVxtuRrvF+FAO9irEwLwvXpmiKtATX253yIGa0lRZnR5SWGQKco2HucKaA2yc/2SDBZrv0kIdBFcC/NjRL0/1X0GusG0/l/QvTEsP02E5NEJ6b4hZ5jDB9dlwQOXzvZE8LpozQqgVpOCdQxp01OWVvZJEuQKg9/RJltzLaKroJ3aoxlz7a8ADgPA/ZpVaeIg72o54ao4nq9/yCFMcf2RKpcaCKw4PxHTmuQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: e66235d4-ad5a-4607-418f-08ded7860151
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:48.3123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oUSMg85gLp75L41MrV64FBTZBiRUxmfI9ilk6bkuVim7bOYIO/gdI0CLnyXxDuZi0OdFELiHyEi8itA8xSJfkA==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3619A6EF463

Re-enable link configurations after sink capabilities change or the link
got reset before updating the link capabilities (due to an RX_CAP_CHANGED
HPD IRQ for the currently connected sink, or a new sink getting
connected).

This makes resetting the link explicitly by calling
intel_dp_link_caps_reset() subsequently redundant; keep the existing
behavior wrt. this for now, adding only a TODO: to remove the explicit
reset.

While at it add documentation for intel_dp_link_caps_update().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  8 +++-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 37 +++++++++++++++++--
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  3 +-
 3 files changed, 43 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6e3fa6662cbef..23001541283b4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -701,7 +701,8 @@ static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
 	if (intel_dp_link_caps_update(intel_dp->link.caps,
 				      common_rates, num_common_rates,
-				      intel_dp_get_max_common_lane_count(intel_dp)))
+				      intel_dp_get_max_common_lane_count(intel_dp),
+				      intel_dp->reset_link_params))
 		params_changed = true;
 
 	return params_changed;
@@ -3652,6 +3653,11 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 
 void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
+	/*
+	 * TODO: Remove the following reset of link capabilities, as
+	 * this isn't needed after intel_dp_link_caps_update(reset=true)
+	 * was called.
+	 */
 	intel_dp_link_caps_reset(intel_dp->link.caps);
 	intel_dp->link.mst_probed_lane_count = 0;
 	intel_dp->link.mst_probed_rate = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 667d2e55cea19..de520bd423d59 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -709,14 +709,42 @@ static int link_config_cmp_by_lane_rate(const void *a, const void *b, const void
 	return lce_a->link_rate_idx - lce_b->link_rate_idx;
 }
 
-/* Return %true if the supported link parameters have changed. */
+/**
+ * intel_dp_link_caps_update - rebuild the supported link configuration state
+ * @link_caps: link capabilities state
+ * @rates: supported common link rates
+ * @num_rates: number of entries in @rates
+ * @max_lane_count: supported maximum lane count
+ * @reset: reset limits and disabled configs
+ *
+ * Rebuild the supported link configuration state from @rates and
+ * @max_lane_count.
+ *
+ * If @reset is %true, reset the maximum link limits to the maximum
+ * supported rate and lane count, and re-enable all configurations.
+ *
+ * This function is called regularly, at least after a sink is connected,
+ * but it may also be called later whenever the sink capabilities may have
+ * changed, for example in response to HPD IRQ / RX_CAP_CHANGED signaling.
+ *
+ * In the Intel driver this function is currently called whenever the
+ * connector detect handler runs, after reading the sink capabilities. This
+ * may change if those capabilities are cached until the sink is
+ * disconnected, or until RX_CAP_CHANGED is signaled. In any case, this
+ * function should be called whenever the sink capabilities were read out
+ * and may have changed.
+ *
+ * Returns:
+ * - %true if the link capabilities have changed, %false otherwise.
+ */
 bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
-			       const int *rates, int num_rates, int max_lane_count)
+			       const int *rates, int num_rates, int max_lane_count,
+			       bool reset)
 {
 	struct intel_dp *intel_dp = link_caps->dp;
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_config_entry *lce;
-	bool link_params_changed = false;
+	bool link_params_changed = reset;
 	int num_common_lane_configs;
 	int i;
 	int j;
@@ -778,6 +806,9 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	       link_config_cmp_by_lane_rate, NULL,
 	       link_caps);
 
+	if (link_params_changed)
+		reset_max_link_limits_reenable_all(link_caps);
+
 	return link_params_changed;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 79aca74ad9eee..dcbde890809bc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -147,7 +147,8 @@ bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps);
 
 bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
-			       const int *rates, int num_rates, int max_lane_count);
+			       const int *rates, int num_rates, int max_lane_count,
+			       bool reset);
 void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
-- 
2.49.1

