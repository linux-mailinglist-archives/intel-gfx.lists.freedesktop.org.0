Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lvFAH5CtMWompAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A128695157
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=KMNKXDHk;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A3E010ED29;
	Tue, 16 Jun 2026 20:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DDA510ED27;
 Tue, 16 Jun 2026 20:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640590; x=1813176590;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=82JY6G796CxwpjAV562/A2j7YNggRvM8tJPDBy52BHI=;
 b=KMNKXDHkBXECVbelBWdIFnUc0FuoyMjqdTD0eALOAS98XOgRAmPkCHQu
 Fg9/EakJXayMLZB76aXr+L5Ml2O5QFhKzWSC7JQ8ctG3HMdyL3b2fDTSk
 EgXCj1plXJxN1/B5ScsQeZSVhBz11lO3ISzUHxT+wprElm86i2rb2+ivt
 W9jpQgGiHDjszyEdPq8D9LkapfntolmdmBCRIl94bPDDgBfQO4aw5LnDl
 twY8iL/tQUYrcTj5sgNSjdVcQ+7dOWXQPar5hik+HNciZCWa4UjsMkEpF
 PD/XIWUkLimqhknRvteKwFtH/w9jRwT+KtOYd0uSMRsMFASqC3rYfNQ4k g==;
X-CSE-ConnectionGUID: VT1sQIT4TNqTANdnVMwnlA==
X-CSE-MsgGUID: 1z4q7I+fSvqdfd32NqKhrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82618656"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="82618656"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:50 -0700
X-CSE-ConnectionGUID: gFQzgOm3TqWKYMhL0dqumg==
X-CSE-MsgGUID: sZzH76FBS2KsUQnxqVfGgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="241515537"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:49 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:48 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:48 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dyOLUlZZZmi7q8EkG4a7uM/mk/CfA0i7TbOSX32Pq265vg5imXwkD8GjFiiYfqOSyI/GZQO277m/dTWpocw6Q58rkQfoAOcKf/dy6jWIH9p7tzkR3G6QlyP0qxHOn/EbpNaiDwRr+Ck2FvuFkXqmGEo+PXVyCW7mMlww6F0/BCgKOJNrdz0yYciwFj0+v+v1wcNMHcR3HvOtV1HfleJPc5gEBIOkbq43yU11v1SBlYUX2DMcoMNbQfuwDGMmEWRBHApzjYkWb1lhtXuq5sIJYj2vBTi7TUEc2Z+U3Sl0D9krkpoiKleW7Fsex6wvH+OyV+TG7ZHfKXpv0pcx9Eo8ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w5E7I0TTB073B/N5PIEdPkFDu6wzWiVsSBR9Bae/se4=;
 b=vMQB0l8RE9VdyLYI8NNyWNmT31bCocKPrt7r8BOJlxINb6MLRlKMvy7XFjbAJnpbmo2yIcWdMuia26tMRJln/Y/j031D/Xg5dSSjeACNIGMtMtnXBrE+RlwD/Ma0ukndS3rlXxZgvbrkuNnIfDKUDCw9z/0Wj66vahXWmrDjuAIZ2l9JKOvuQAvl6aw4MAmUrFKes9lQGAXF48XFS3RDpeXEVHwCJXp/kk8eiwSwzcc4FVE7fhKAZ81VAmFJPA07yCZuNqsjPwxv+GNuM3Qcu6K7bbB12U0w6fpgjlzVmaMmjDj9/P3VeCoDTfXly7/bnAJyqPs5U6bW5Eg7CwHFGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:35 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:35 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 12/28] drm/i915/dp_link_caps: Rename helper updating the
 link configurations
Date: Tue, 16 Jun 2026 23:08:32 +0300
Message-ID: <20260616200849.3534628-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: c9b12e81-80ae-44fa-6e62-08decbe32edc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: Yw8n6PYgzeYv5AeQkJ2sONVFBNobTHFo7yOEJKfm6os42S9GVTNz3zTfQ6mWJv5Wis8IKBOCzCb+VYfQhRBSdruZqXDHAUOq7qz8SXQWPWt//ThE84jBf+2ZQK4EWQPJSlYULA3GyOaiZgQqKqLXCJ59DVa8tMWHBi1pmYET1slCs8cvY6OLfwJHkxjvSjx3/exoPSKYNr8OZMxDmNbepTM70hKdxJZ8SBEnlfu1Z68vN41JT+HyA72W8piBqu8hcdKS2d+mbr20wlSzrFZw/9YnPB9c3msDiXtZjD3uCVyEQEhdxyj77UZG7u4h0VQj3Qn7Xot+JiXzZLmZDzYsjHCzETzUE71QdoEkF8AbHRa4EO1J7J6EBmVqUxRLiiH8M4Cn6wWBlx5pYUnZl+73PVKH5BjdsOzlpJwh/vXG+WIWJh+uZg8LiahWz98/FFHeho6aqPO1Nexeq/cDXY0fjkSFJulnvM7pSfqARsm5Gmc4dN0JZib8a2F0juVOSxY7eqYo+xbGUeE9jUwvuBA3Lp7kkE9+SUA4PR3ymg1ZrAIlnhEmb1yagPL0hCRPaiQ64mE+pWRo3o5D9wXT/C+BDrcZK9hSX1MzAuDoxQVEnm+i84qL6iZ7YTnkcN3zWc8JSXxKpkPkzKyV61AOguJ3qrEDM4ecCHBgUd0XFrYUpVRck21ve2iacGjyjmjn2kJB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qxofyQHMMSQHGYbxduR71CqkDYs3xordo91tB19ebc6ZtlkZs3FrxuKo4KfE?=
 =?us-ascii?Q?lbgNylVlCT/n9S4H3mq5i6WT/bq0+VORyZOiJRmU6OS36fr0kK5aaiW89dk/?=
 =?us-ascii?Q?zUMAIX2sTKWZ9cl8VTlMG71LxJb5/ETBTH5ltiNAyCNYbLpapFyzY2ovNPWj?=
 =?us-ascii?Q?TMzbIEeodTz3b0YiIlKrP7s8FE/8blSxFRi1T6w+yPLZeb9O/UHx7AIOk8He?=
 =?us-ascii?Q?ILtBWK4R/xpyZ5MIcJrV33pJPxRi2DzdjtQqW9VWiRM6NoRJYPT/ZYTqH4yk?=
 =?us-ascii?Q?Pbmjsu0y3rLfVGDGDllnq77vflK6y3M8WDg3cY4DaeMkf30fpssME3tqaCoA?=
 =?us-ascii?Q?ug9zjGUlwgZPDVVA2UEpmEeHyqcqI/rRhUwVv6dvvPbYA4Kn8VfMLm1hRREq?=
 =?us-ascii?Q?+5/HwJuhPzeyYgdE37onSZMqan3RRxekbjG968sjmv0qb3c5oQqSw3Uig5J9?=
 =?us-ascii?Q?nnkENItj+Gf75h1ESBP01vRndBJWfaRXdFyQYdzRaAzBYYcOxjD5npf748iL?=
 =?us-ascii?Q?k6wIB8lcPXSvknyhwqRd32zKK9QesdSJliZOhu0cAmXdo1dD7Wo+a49/bnvU?=
 =?us-ascii?Q?A7LzlVBWrmOs4kKIfsjpBe5cVEHjjKdkj0F3ZrBR5RWBZbFHYn65PlOWyXoT?=
 =?us-ascii?Q?tl9YkVoojgyItiq2A8O/ns96CLg5bNVtS02q2J0twrkIC+g4OKmd6jsX6w6B?=
 =?us-ascii?Q?c4nA0BQ80P6H1fojY7QKeuFPNIKhAOKFtgLp9nqcnvAimH9hED32mSeW+va5?=
 =?us-ascii?Q?uRNve8WG2JMXPAL1sSC1W4+ENBKoGmQXcKy0pvisbBAb1QACYIldRDjSnjXj?=
 =?us-ascii?Q?b0LnS+iVoi3U659D2VXdvH6EiUMKbj8J3TuYQqDb0tDHqGDzSrO9kpQclJ9l?=
 =?us-ascii?Q?12G8V3GQHZ7rdvKIzvlWSBwFCf78pqfJ8VQnwRDZIXautuvgufmphKYua2XU?=
 =?us-ascii?Q?DP+iu/Qapa9J7mL+Se71Wx0dBnGbVWSFp1c3gkP4pzqGmTgOVqq9x/hPT1LA?=
 =?us-ascii?Q?bE4oL4DgkshrZBHkpTdJJo0djNYGmLKlZ0BH/hffej0+sHDo64oN7GiZK5Tr?=
 =?us-ascii?Q?nPfWkMqLrKmjv2f94M6cEIR4BjH3xXtJwNsnyvhHn+vu2c1wsXKy6dUcAflg?=
 =?us-ascii?Q?5Y8QiEMjS6Tpt/C2wvkRaJqyvYYjDQHtEjSyYpFcDCPo6XB90+rCXtRfmAv/?=
 =?us-ascii?Q?CSR7jT+7/TXHeaQfxHVVjL4eYlNjUs42U/INAHHGmFio7uIkT3bIgn/AAzYB?=
 =?us-ascii?Q?vWXgZD2gJWS7k/r+tyF4l1iN0NnsqHYRozQARLigiwtBOIen44ippKd4MMMP?=
 =?us-ascii?Q?HnjKUeRjJA3roFv0jvZQNLsV5u7KiJ2He5D1H7+1hNH4RJmVbdBkkHjhmvMu?=
 =?us-ascii?Q?Sjb7L44ztpheNwRESkDrPVyk+Orl6ua6CQm6OBXcYB34qMgzXwQCXeZFPI5j?=
 =?us-ascii?Q?UIsnYTAwMkZ88NJP+PZFHhq3A1VYd4C8nEZOQJETAjww7LUr43vrh0tcutuI?=
 =?us-ascii?Q?1RGLgUhG6MZ29gRU6BeMx4yagCU70AJs8epT7fyVPxF+I2M6Q+oibmqmx5U4?=
 =?us-ascii?Q?EHfQm1Rr6I5RH3CX4dvpgrZC6cG+cp8dfzyKX001yLtx6GioMwx28yWh2j8i?=
 =?us-ascii?Q?dvg+10kDPKh6aN+Z8TtJwtt2HKKp1IHtVephghAVdzz/IH644wT7AwH4wstc?=
 =?us-ascii?Q?rn8E+wq+mAjOprpUJCcOn4Z9qoei7GmqCzRfkczqlv5h5/5dHFFYQGeo1zcS?=
 =?us-ascii?Q?Z6bkg6n4qg=3D=3D?=
X-Exchange-RoutingPolicyChecked: fd25sRB+kkLG1SuKCdM83Nt/YJmgUwYtACmDuoC6p2AqsXtr0zrwSy62hIzF97IYSHB0kswykw2RG4dKCOzl3Nhk+B7lGNrPM2VheA8P5TLwDUGh3WH7ZdghOiuBD13aR+sNjCx5PdVlMN0pfQThB6AwsEusgiLQEb17FmhlWpazOKUTPv5D8v9wGjAiw6g2MxmwA2y5Cy9K4g6pXzwMv8VXS1y0Z4DjlGNe1gSo/J/1NS2sdyFKBSaA4s31zkNZf5yWSgN60stoJSVFTykkI7PQWxUo3eNg2Ad0QAYJ+bf3jRkoli+BfDo6zEMCxjVpJsRpmuJEnbdIj40rfla6nQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: c9b12e81-80ae-44fa-6e62-08decbe32edc
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:33.9670 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JKO/vhi5T+9hwTCMLR6iChAb8IXqEmczvLMnVUUV9mDBkrnUM2qsvcqCp/Rv0QVLXaRznBGgVrXNZmG92aUnPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2A128695157

Rename the helper updating link configurations to
intel_dp_link_caps_update() to better reflect its functionality.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c4b650431eff5..65a13b2f7584d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -720,7 +720,7 @@ static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 	if (intel_dp_set_max_common_lane_count(intel_dp))
 		params_changed = true;
 
-	intel_dp_link_config_init(intel_dp);
+	intel_dp_link_caps_update(intel_dp);
 
 	return params_changed;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 05ec933c74407..2074952931738 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -131,7 +131,7 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 	       intel_dp_link_config_rate(intel_dp, lc_b);
 }
 
-void intel_dp_link_config_init(struct intel_dp *intel_dp)
+void intel_dp_link_caps_update(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index dab956e804b95..aed2122a05d24 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -20,7 +20,7 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 
-void intel_dp_link_config_init(struct intel_dp *intel_dp);
+void intel_dp_link_caps_update(struct intel_dp *intel_dp);
 
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 
-- 
2.49.1

