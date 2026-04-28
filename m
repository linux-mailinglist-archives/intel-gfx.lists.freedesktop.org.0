Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGXsMW2u8GkUXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6583F485639
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:56:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6BA710ECBF;
	Tue, 28 Apr 2026 12:56:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jD4sViVb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41F0D10ECD0;
 Tue, 28 Apr 2026 12:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380970; x=1808916970;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=XGMJpWuq6LjW6yJqzvtFH4eTSWEQVz2NUgKcAJhyzaY=;
 b=jD4sViVb3gN4HFHHI1sy9BfDsFop++RtOoEWUHySczxmio5mgZIWhkuP
 555k3PpkgVthcYGEnejkj5vpWkqmovM3+23wAsbipxgM6FnDSRvswlbzY
 ZR/CIa9xRc+tgGN8+zY9OwapQyFP2YVj5L+97UNfnXCnVWBKaLoaDWCV0
 8s3nLloXLqOjexKqvjvyx+jeRkwAiHrG2/frfO/5G7bFfv/5dCgGRp9Pv
 n16UKOfi+KZF/yhJfkif+S3bpnwn+qYBK4jwKJdKfD/xCtV1JyT1PowY+
 wnpirn7wxQBZXS3SSJjuMUK4dsN/bKEo6joGe1uJTdzBQAa7Fv16Kq1Bj g==;
X-CSE-ConnectionGUID: XFgNHQB0QreAEwUbAJ+NNQ==
X-CSE-MsgGUID: /CTR/OWQR/WhVePUnEiI/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88883748"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88883748"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:10 -0700
X-CSE-ConnectionGUID: v4SXFDdbQiSKI6V5rcBSVA==
X-CSE-MsgGUID: jxRjY1I7SSeJJrnZSPLDEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="230795294"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:56:10 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:09 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:56:09 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:56:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EosVnWQBKbtmLxcVKNBRbLjc64MXy7nr8qQ+xQraLx1rjaOiJb8U1wh7yw3DHBrGd7JZML6RCKBPF5p+ZOeP51DgboYZgKBmGIAI9I2FaA9TZS0ZpqRC9zczu9d1UhRVBFXhUIiQGf4AygzEJSIHwzk3Y8cMzyFHxcr7mAJvyPOXBzmkXvXmCfK6G9qz8CkGTbKcJr0wAoUampjGKZrtoBEZ+GdjciYkxRg8owS660jvC0GLN7AFkUQvXIwqf2h2ioUS9qhp9CisPJC7Wt4QPpsjuvlfy7YFmU2PYI5wKXQif7qnP0lgFuk5rf7akCjHQNX+Uw6+SGBwDi4aQZmvog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZV+526KwBGKvTkr/WkRT0/GkynbSSmDX8AL2e3TBFss=;
 b=fGgbbCbQMqlgzj60tGVsVJQKSJdfIVmaBQY18aa+kuu4NpwpxSGeQZd1QFwBug5qRCeHPdqv2ALE0Oc3gjLWnefyST30ppp2gdrrxRRuYQatiUcjDWNeuU5dnxfEyP4KTB8FJMxoE7QvhyWajJSeLPyBXz4KR3gOfszxMN0kovGKOigd7/JqCEWen0hD31S1JiVbnS+22gnAC/dRH+Gqa0aSRs/aOR/kQANT1tTNf4lOG6wwt1o2Z0NLIiB1pFBxSvzHMIK3wPXjDcIT+kgl6eTr5XhqamIDrKdc4NIqyZOG7VwVVmjG/ihQN4albxcwWUsZaFljAd5flp6iO2kxeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:56:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:56:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 107/108] drm/i915/kunit: DP link: add update config tests
Date: Tue, 28 Apr 2026 15:52:28 +0300
Message-ID: <20260428125233.1664668-108-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fa9e498-0ce3-414f-9b79-08dea52570a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 5hjP25nXmKCgHbhejopr2Z1f2MzKtt1k3k2iS18mwmI6SZV+Pr19o6RHRgjcj2lXWAiGSn3vSb7D9j5k6pfAA0I9ljAFVBT+Kz2I03UxcYrqMEM/KLPgY15skfAK1cEvrH0ZRnw8DHGTKgaj2hCgo9fJhuT6+7bSR85xWTgvrjXps3UCqgK0FnHwmFB+EO7HIaVeyxOtAl8xvwLPZaUlIrKQQajn9kctDdAvzoBkfj3Q1g6yMfsvzA2V0YMfHu4x53pki6lJV9lwHb2zHiZvKsosiYf6uJzwToJOwHVzDImlMuNcQALRJWB78DrAC14ZGd64pdrOQN+qhLcH3ALKRquuyotwfTcrq1+otoimieA4gV96o1viOuSF6G9BXkJEL2xHpbMlDBckNWDIgzliCzMr5aZh3+Ggka7pTrmVl7xiLWeV+amaF6/LiL5QumxHqca60LjOJ4Uxf5oTMckL9LQ3qow21rK14lU5V8e18SwRkoEQShluaWp3orHWFh9YiGvM0r0TtmRMefzphH1zJa52iqcfqjLbcVDCT9bXpCD0aXaUL5mYM27uqcN7xTqtnNWDHx4TItxFqx9MktxX2tfIqskalkyy5CFyWAeViNrAP7/TpeROA/yaJphlt7LrhgutoB/iFNRvaNEcWHyPn8Vjsb+tyC2H32jSRyR3zIDFjSyL4zjtEdtr7Tpf/D1XujPyBF21qAu2+vzWwpayqgq0q4IG2LPTgpT4qr8iXVw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?smswixNqSmQGDz2Jeg0PSRurzSsKWDxB8dGV5vycpchtRawEWSiVbO/6xUC+?=
 =?us-ascii?Q?CmryGLDV7BPTrqfM+vmJdVDMJaK+mmF1m6HvtkFRvJd8mz+kHR09Nfd4ts/j?=
 =?us-ascii?Q?kosbIyxiO0N285tae3Oy/OgacZZaQLPP4HYDihtnbqQtD7TcEk7hDX8ffWrX?=
 =?us-ascii?Q?DVqD1taiMv0xG9kvVvCj0WXgWwLIczv0vcIhscXHKcmk5qTdc/4GTPw6TR99?=
 =?us-ascii?Q?G/TjA+cbyekuQBIYea4tETCnkii9xtK7j93Q3vGQkR6v+/Jyek7VdtBCirjw?=
 =?us-ascii?Q?Oex2d28jvwZ/zYOwIOSQLGnerGJLOBL2MQ2PgDg5poWKxOvEXEQBV+r4J+xg?=
 =?us-ascii?Q?KroRRAIeqkl/mznwPyrcxisoPwLA2t5+wUDfHrOPPzCV9xpD0NxV5opdyGsA?=
 =?us-ascii?Q?V39h3vzhWZWWcf7Ord9gbeYVjxhbyUMUKSJKwCzhXCyQACOq0q+h0QTNs2QL?=
 =?us-ascii?Q?KzU6gWRDSJl8Bt+QptcfsA+4yV70PyeqhHgwTNnUmGiU8ovbJrEl3cpQjHl4?=
 =?us-ascii?Q?KHN/MLz/AGdKhiTQ7X+nCBD8hju0FHfEtqCbhQ92f7SM+EbbO/K6BQFcMcBm?=
 =?us-ascii?Q?fWOuYCQF6fd8VbE182BbBjdrfy4s10OOiaHzxxBAc/axcpryLTAr/5xcVVkm?=
 =?us-ascii?Q?0fOwMavLAzBY02a5Dxd+wFc0ebbrbpGqgeal0iI/hc18Caf/UueT+jkB0SvH?=
 =?us-ascii?Q?8jXpR6Cpho2mzlir7gp3AfcT0WbGziJGCvTXgAyWGNLJt85+G86mi1rKKj6F?=
 =?us-ascii?Q?5DjiFXTKyyiA1mdOPhkzl9G3R/z22TkMa9a3ZKMoY2+tBXHpuRJDOFq5gRCb?=
 =?us-ascii?Q?H//otxPlfGmVivTKwOyBNm07WDLAJHbarUyKCWh/LQStmI8XDRjm+T5YqL8s?=
 =?us-ascii?Q?cBXDlB0RxVQ7eEwc/2rTGK5y6jSNcWMB/gMeS0u0XsCrt3z5AqogwREffJZj?=
 =?us-ascii?Q?v42QHUfMsVFAIDJa5v/xGZo3Q8ot1RqXQoOigoXyBnhLt3shfFip0RKJRWfY?=
 =?us-ascii?Q?Eox3nuwU8k1hOVTgNq6/jzces3+i83o1fuvp3L66b8chiEwODdXQyaEuYUdu?=
 =?us-ascii?Q?rDRiaXxzEbfE92CyFrFbizEN4M/0XY44rgBTWxg4FISiQaW0ixDKhtZc8ki1?=
 =?us-ascii?Q?WJmMzYwktbEoFIKe3+kEkuT7dAKQsi7HaVKSzq11QyzugEH6IiRy3XE30rV+?=
 =?us-ascii?Q?32OGMpkp9MrH4Gbj/SvWZctp1YLzqjoi+eIWJrpWq9Ng90zD3bXX4nN8Mbc9?=
 =?us-ascii?Q?FBI25Phvu9C5rFEXENaMZe0T7qDH18jP7qeWtko7qRSjX4kHguP5yECmAElT?=
 =?us-ascii?Q?mC70XffNXXshLocPTNLsdc98PnJV/dvf0/PbQHZMlEyiEb5YeUfDz2BGCizK?=
 =?us-ascii?Q?ElzJNSd33Nfb84ra8yWhL0rgLywxQbxrYumqD8FI5F1W0kr0mwrIgsUfxoSX?=
 =?us-ascii?Q?jKw/oshE6qXYeolt5a03T7iUvzNooYUVwSfwhlMlTdcNKOjHUgFN7jDaiNmw?=
 =?us-ascii?Q?RMGOaloYTCMhlsjuJX8Pkq7odAMu6DHPJ5AgFj5kUKKxB0uwznZp1dj7239A?=
 =?us-ascii?Q?EbCZEDrEsIsKF8FubmIWp2nMVr9D6WBMftuezdjb25vBhBFYC6jl6tnodFSZ?=
 =?us-ascii?Q?B6U7YcKvberb1c0sp5GU90rlLUPpFKx4VqeiNzhRrJXnpxozkbjokK7d3ML0?=
 =?us-ascii?Q?g1SCLizzyN2T9gB9s6a3AMHSSyLh9C9vPLnrHTYOUd65xtq4dgQbqpBtxt1R?=
 =?us-ascii?Q?OVaaQuh67g=3D=3D?=
X-Exchange-RoutingPolicyChecked: VVoXNokl9AmWB6HQbyXZSeNNsh4R6bo2fDsbchRUxfaFW+9532e8KksatUIu6HeWakcLbX+MQLrgThR0msn230X7i/KbLHi7qk59EwoaLcdDk4UK9efYpb7Yujw7khCwdNIDAKAGTcCZ5VxTmfq3IOmD+t0mfjAdtWkat7K3AYlUFt/2HGUIIdkl+FJPSLJ5JbaEMrjDQrpSuyXVhAs1JOTHx6W4VmlFHX1x0PsWDnYpXZZrJXnZfhUjkFHBIVBWs8INVfoGKurNzE6tUq/mE79Oe6rXiarSKBZHjYIi2o4Jcn7RfPNJXxjuZt5rV2oisoW0AKwnYia1yH6mDj04Ng==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fa9e498-0ce3-414f-9b79-08dea52570a5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:35.9725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3oAvDVK7xJZFOftvuT0FtJ6XPSV50Tl8B8J5bPdviEhWbGGKdj0SQTr+IcS8Urry7/JAGQUQSbB4Sgp1z2hFew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
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
X-Rspamd-Queue-Id: 6583F485639
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

Add KUnit tests for link_caps updates, covering reset and merge updates
when supported rates and lane counts shrink or expand.

The tests also cover updates with disabled configurations, including
random shrink and expand sequences, to verify that disabled state,
allowed configurations, ordering, and max limits stay consistent across
updates.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/tests/intel_dp_link_test.c   | 763 ++++++++++++++++++
 1 file changed, 763 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index e6feb68cb912f..10c4679f31efd 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -82,12 +82,29 @@ struct link_config_set {
 	int size;
 };
 
+struct test_config_table {
+	struct kunit *test;
+
+	struct link_rate_set rates;
+	int max_lane_count;
+	struct link_config_set disabled_configs;
+};
+
 static const int standard_dp_link_rates[] = {
 	162000, 270000, 540000, 810000, 1000000, 1350000, 2000000
 };
 
 #define LINK_TEST_NUM_STANDARD_RATES (ARRAY_SIZE(standard_dp_link_rates))
 
+#define INIT_STANDARD_TABLE(__test, __num_rates, __max_lane_count) { \
+	.test = (__test), \
+	.rates = { \
+		.entries = standard_dp_link_rates, \
+		.size = (__num_rates), \
+	}, \
+	.max_lane_count = (__max_lane_count), \
+}
+
 static const struct link_config_set standard_dp_link_configs[] = {
 	[TEST_CONFIG_ORDER_KEY_BW] = {                        /* MBps    PBN    */
 		.entries = {
@@ -180,12 +197,56 @@ static const struct link_config_set standard_dp_link_configs[] = {
 	},
 };
 
+static int lookup_rate(const struct link_rate_set *rate_set, int rate)
+{
+	int i;
+
+	for (i = 0; i < rate_set->size; i++)
+		if (rate_set->entries[i] == rate)
+			return i;
+
+	return -1;
+}
+
+static bool has_rate(const struct link_rate_set *rate_set, int rate)
+{
+	return lookup_rate(rate_set, rate) >= 0;
+}
+
 static bool link_configs_match(const struct intel_dp_link_config *a,
 			       const struct intel_dp_link_config *b)
 {
 	return a->rate == b->rate && a->lane_count == b->lane_count;
 }
 
+static int lookup_config(const struct link_config_set *config_set,
+			 const struct intel_dp_link_config *config)
+{
+	int i;
+
+	for (i = 0; i < config_set->size; i++)
+		if (link_configs_match(&config_set->entries[i], config))
+			return i;
+
+	return -1;
+}
+
+static bool has_config(const struct link_config_set *config_set,
+		       const struct intel_dp_link_config *config)
+{
+	return lookup_config(config_set, config) >= 0;
+}
+
+static void add_config(struct kunit *test,
+		       struct link_config_set *config_set,
+		       const struct intel_dp_link_config *config)
+{
+	KUNIT_ASSERT_LT(test, config_set->size, ARRAY_SIZE(config_set->entries));
+
+	config_set->entries[config_set->size] = *config;
+	config_set->size++;
+}
+
 static u32 get_all_config_mask(void)
 {
 	return GENMASK_U32(LINK_TEST_MAX_CONFIGS - 1, 0);
@@ -274,9 +335,711 @@ static void intel_dp_link_caps_test_baseline(struct kunit *test)
 		baseline_test_for_order(test, link_caps, config_orders[i]);
 }
 
+static int get_num_configs(int num_rates, int max_lane_count)
+{
+	return num_rates * LINK_TEST_NUM_LANE_CONFIGS(max_lane_count);
+}
+
+static int rand_in_range(struct test_ctx *ctx, int min, int max)
+{
+	return min + (prandom_u32_state(&ctx->rnd) % (max - min + 1));
+}
+
+/*
+ * TEST: Update reset
+ * ------------------
+ * Verify that resetting link_caps with the DP standard rates/lane
+ * counts updates the configuration table accordingly for all
+ * combinations.
+ */
+static u32 get_link_caps_enabled_config_mask(struct kunit *test,
+					     struct intel_dp_link_caps *link_caps)
+{
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+	struct intel_dp_link_config old_limits;
+	u32 mask;
+
+	/*
+	 * The link_caps allowed config mask is limited by both the disabled
+	 * state of the configs and the current max limits parameters. To get
+	 * the enabled mask unaffected by the max limit parameters, get the
+	 * allowed mask by resetting the max limits temporarily.
+	 */
+	ops->get_max_limits(link_caps, &old_limits);
+	ops->reset_max_limits(link_caps);
+
+	mask = ops->get_allowed_config_mask(link_caps);
+
+	ops->set_max_limits(link_caps, &old_limits);
+
+	return mask;
+}
+
+static void verify_bw_asc_config_order(struct kunit *test,
+				       const struct intel_dp_link_config *last_config,
+				       const struct intel_dp_link_config *config)
+{
+	int config_bw = drm_dp_max_dprx_data_rate(config->rate,
+						  config->lane_count);
+	int last_config_bw = drm_dp_max_dprx_data_rate(last_config->rate,
+							  last_config->lane_count);
+
+	KUNIT_EXPECT_GE(test, config_bw, last_config_bw);
+	if (config_bw == last_config_bw)
+		KUNIT_EXPECT_GT(test, config->rate, last_config->rate);
+}
+
+static void verify_bw_desc_config_order(struct kunit *test,
+					const struct intel_dp_link_config *last_config,
+					const struct intel_dp_link_config *config)
+{
+	int config_bw = drm_dp_max_dprx_data_rate(config->rate,
+						  config->lane_count);
+	int last_config_bw = drm_dp_max_dprx_data_rate(last_config->rate,
+							  last_config->lane_count);
+
+	KUNIT_EXPECT_LE(test, config_bw, last_config_bw);
+	if (config_bw == last_config_bw)
+		KUNIT_EXPECT_LT(test, config->rate, last_config->rate);
+}
+
+static void verify_rate_lane_asc_config_order(struct kunit *test,
+					      const struct intel_dp_link_config *last_config,
+					      const struct intel_dp_link_config *config)
+{
+	KUNIT_EXPECT_GE(test, config->rate, last_config->rate);
+	if (config->rate == last_config->rate)
+		KUNIT_EXPECT_GT(test, config->lane_count, last_config->lane_count);
+}
+
+static void verify_rate_lane_desc_config_order(struct kunit *test,
+					       const struct intel_dp_link_config *last_config,
+					       const struct intel_dp_link_config *config)
+{
+	KUNIT_EXPECT_LE(test, config->rate, last_config->rate);
+	if (config->rate == last_config->rate)
+		KUNIT_EXPECT_LT(test, config->lane_count, last_config->lane_count);
+}
+
+static void verify_config_order(struct kunit *test,
+				struct intel_dp_link_caps_config_order config_order,
+				const struct intel_dp_link_config *last_config,
+				const struct intel_dp_link_config *config)
+{
+	switch (config_order.key) {
+	case INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW:
+		if (config_order.dir == INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC)
+			verify_bw_asc_config_order(test, last_config, config);
+		else
+			verify_bw_desc_config_order(test, last_config, config);
+		break;
+	case INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_RATE_LANE:
+		if (config_order.dir == INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC)
+			verify_rate_lane_asc_config_order(test, last_config, config);
+		else
+			verify_rate_lane_desc_config_order(test, last_config, config);
+		break;
+	default:
+		KUNIT_FAIL_AND_ABORT(test, "Missing order key: %d", config_order.key);
+	}
+}
+
+static void
+verify_link_caps_for_order(const struct test_config_table *expected_table,
+			   struct intel_dp_link_caps *link_caps,
+			   struct intel_dp_link_caps_config_order config_order)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+	struct intel_dp_link_config expected_max_limits = {};
+	struct intel_dp_link_config actual_max_limits;
+	struct intel_dp_link_config last_config = {};
+	struct intel_dp_link_config iter_config;
+	int num_actual_configs = 0;
+	int iter_config_idx;
+
+	test_for_each_dp_link_config_idx(ctx, config_order, get_all_config_mask(),
+					 &iter_config, &iter_config_idx) {
+		bool config_disabled;
+
+		num_actual_configs++;
+
+		/*
+		 * Verify the config's rate/lane-count values and its ordering relative
+		 * to the previous config.
+		 */
+		if (last_config.rate)
+			verify_config_order(test, config_order, &last_config, &iter_config);
+		last_config = iter_config;
+
+		KUNIT_EXPECT_TRUE(test, has_rate(&expected_table->rates,
+						 iter_config.rate));
+		KUNIT_EXPECT_LE(test, iter_config.lane_count,
+				      expected_table->max_lane_count);
+		KUNIT_EXPECT_TRUE(test, is_power_of_2(iter_config.lane_count));
+
+		/* Verify the config's disabled state */
+		config_disabled = !(get_link_caps_enabled_config_mask(test, link_caps) &
+				    BIT(iter_config_idx));
+		KUNIT_EXPECT_EQ(test, config_disabled,
+				      has_config(&expected_table->disabled_configs,
+						 &iter_config));
+
+		/*
+		 * Update the max limits for allowed configs, verified at the
+		 * end for the whole config table.
+		 */
+		if (!(ops->get_allowed_config_mask(link_caps) &
+		      BIT(iter_config_idx)))
+			continue;
+
+		expected_max_limits.rate = max(expected_max_limits.rate,
+					       iter_config.rate);
+		expected_max_limits.lane_count = max(expected_max_limits.lane_count,
+						     iter_config.lane_count);
+	}
+
+	KUNIT_EXPECT_EQ(test, num_actual_configs,
+			      get_num_configs(expected_table->rates.size,
+					      expected_table->max_lane_count));
+
+	ops->get_max_limits(link_caps, &actual_max_limits);
+	KUNIT_EXPECT_TRUE(test, link_configs_match(&expected_max_limits,
+						   &actual_max_limits));
+}
+
+static void verify_link_caps(const struct test_config_table *expected_table,
+			     struct intel_dp_link_caps *link_caps)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(config_orders); i++)
+		verify_link_caps_for_order(expected_table, link_caps, config_orders[i]);
+}
+
+/*
+ * Filter out the disabled configs, which got removed after a configuration
+ * shrink step reduced the maximum rate and/or maximum lane count of the
+ * configurations.
+ *
+ * Also make sure that at least one configuration (the minimal config) remains
+ * enabled after a shrink step.
+ */
+static void update_disabled_configs(struct test_config_table *expected_table)
+{
+	struct kunit *test = expected_table->test;
+	struct link_config_set new_disabled_configs = {};
+	const struct intel_dp_link_config min_config = {
+		.rate = expected_table->rates.entries[0],
+		.lane_count = 1,
+	};
+	bool min_config_disabled = false;
+	int num_configs;
+	int i;
+
+	num_configs = get_num_configs(expected_table->rates.size,
+				      expected_table->max_lane_count);
+
+	for (i = 0; i < expected_table->disabled_configs.size; i++) {
+		const struct intel_dp_link_config *config =
+			&expected_table->disabled_configs.entries[i];
+
+		if (config->rate >
+			expected_table->rates.entries[expected_table->rates.size - 1] ||
+		    config->lane_count >
+			expected_table->max_lane_count)
+			continue;
+
+		/*
+		 * Mark the minimum config disabled only at the end, and only if that
+		 * would not leave all configs disabled.
+		 */
+		if (link_configs_match(config, &min_config)) {
+			min_config_disabled = true;
+
+			continue;
+		}
+
+		add_config(test, &new_disabled_configs, config);
+	}
+
+	expected_table->disabled_configs = new_disabled_configs;
+
+	if (min_config_disabled &&
+	    expected_table->disabled_configs.size + 1 < num_configs)
+		add_config(test, &expected_table->disabled_configs, &min_config);
+}
+
+static void update_link_caps_and_verify(struct test_config_table *expected_table,
+					struct intel_dp_link_caps *link_caps,
+					enum intel_dp_link_caps_update_mode update_mode)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+
+	update_disabled_configs(expected_table);
+
+	ops->update(link_caps,
+		    expected_table->rates.entries, expected_table->rates.size,
+		    expected_table->max_lane_count,
+		    update_mode);
+
+	/*
+	 * In case of adding new configurations vs. replacing the current
+	 * ones with new ones, the max limits tracked by link_caps don't
+	 * get updated automatically, do that here as expected by all the
+	 * test cases.
+	 */
+	if (update_mode == INTEL_DP_LINK_CAPS_UPDATE_MERGE)
+		ops->reset_max_limits(link_caps);
+
+	verify_link_caps(expected_table, link_caps);
+}
+
+static void intel_dp_link_caps_test_update_reset(struct kunit *test)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dp.link.caps;
+	int max_lane_count;
+	int num_rates;
+
+	for (max_lane_count = 1;
+	     max_lane_count <= LINK_TEST_MAX_LANE_COUNT;
+	     max_lane_count <<= 1) {
+		for (num_rates = 1;
+		     num_rates <= LINK_TEST_NUM_STANDARD_RATES;
+		     num_rates++) {
+			struct test_config_table expected_table =
+				INIT_STANDARD_TABLE(test, num_rates,
+							     max_lane_count);
+
+			update_link_caps_and_verify(&expected_table, link_caps,
+						    INTEL_DP_LINK_CAPS_UPDATE_RESET);
+		}
+	}
+}
+
+/*
+ * TEST: Update shrink and expand
+ * ------------------------------
+ * Verify that removing or adding supported rates/lane counts updates
+ * the configuration table accordingly.
+ */
+static void disable_configs_and_verify(struct kunit *test,
+				       struct intel_dp_link_caps *link_caps,
+				       struct test_config_table *expected_table,
+				       const struct link_config_set *config_set)
+{
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+	int i;
+
+	for (i = 0; i < config_set->size; i++) {
+		int config_idx;
+
+		config_idx = ops->find_allowed_config_idx(link_caps,
+							  INTEL_DP_LINK_CAPS_CONFIG_MATCH_EXACT,
+							  &config_set->entries[i]);
+		KUNIT_ASSERT_GE(test, config_idx, 0);
+
+		KUNIT_ASSERT_FALSE(test, has_config(&expected_table->disabled_configs,
+						    &config_set->entries[i]));
+		add_config(test, &expected_table->disabled_configs, &config_set->entries[i]);
+
+		ops->disable_config(link_caps, config_idx);
+
+		verify_link_caps(expected_table, link_caps);
+	}
+}
+
+static void disable_configs_for_shrink_and_verify(struct test_config_table *expected_table,
+						  struct intel_dp_link_caps *link_caps)
+{
+	struct kunit *test = expected_table->test;
+	struct link_config_set config_set = {};
+	struct intel_dp_link_config max_config;
+
+	/*
+	 * When configs shrink disable the config with the
+	 * second-highest rate,lane params, so the disabled config
+	 * stays around after the configs got shrunk.
+	 */
+	KUNIT_ASSERT_GE(test, expected_table->rates.size, 2);
+	KUNIT_ASSERT_GE(test, expected_table->max_lane_count, 2);
+
+	max_config.rate = expected_table->rates.entries[expected_table->rates.size - 2];
+	max_config.lane_count = expected_table->max_lane_count >> 1;
+
+	add_config(test, &config_set, &max_config);
+	disable_configs_and_verify(test, link_caps, expected_table,
+			&config_set);
+}
+
+static void disable_configs_for_expand_and_verify(struct test_config_table *expected_table,
+						  struct intel_dp_link_caps *link_caps)
+{
+	struct kunit *test = expected_table->test;
+	struct link_config_set config_set = {};
+	struct intel_dp_link_config max_config;
+
+	KUNIT_ASSERT_GE(test, expected_table->rates.size, 1);
+
+	max_config.rate = expected_table->rates.entries[expected_table->rates.size - 1];
+	max_config.lane_count = expected_table->max_lane_count;
+
+	add_config(test, &config_set, &max_config);
+	disable_configs_and_verify(test, link_caps, expected_table,
+				   &config_set);
+}
+
+static void get_nth_rate_lane_config(const struct test_config_table *expected_table, int n,
+				     struct intel_dp_link_config *config)
+{
+	int num_lane_configs = LINK_TEST_NUM_LANE_CONFIGS(expected_table->max_lane_count);
+	int rate_idx = n / num_lane_configs;
+	int lane_count_exp = n % num_lane_configs;
+
+	config->rate = expected_table->rates.entries[rate_idx];
+	config->lane_count = 1 << lane_count_exp;
+}
+
+static void test_update_rates_shrink(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+					  LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps,
+				    INTEL_DP_LINK_CAPS_UPDATE_RESET);
+
+	while (expected_table.rates.size > 1) {
+		if (disable_configs)
+			disable_configs_for_shrink_and_verify(&expected_table, link_caps);
+
+		expected_table.rates.size--;
+
+		update_link_caps_and_verify(&expected_table, link_caps,
+					    INTEL_DP_LINK_CAPS_UPDATE_MERGE);
+	}
+}
+
+static void intel_dp_link_caps_test_update_rates_shrink(struct kunit *test)
+{
+	test_update_rates_shrink(test, false);
+}
+
+static void intel_dp_link_caps_test_update_rates_shrink_disable(struct kunit *test)
+{
+	test_update_rates_shrink(test, true);
+}
+
+static void test_update_rates_expand(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, 1, LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps,
+				    INTEL_DP_LINK_CAPS_UPDATE_RESET);
+
+	while (expected_table.rates.size < LINK_TEST_NUM_STANDARD_RATES) {
+		if (disable_configs)
+			disable_configs_for_expand_and_verify(&expected_table, link_caps);
+
+		expected_table.rates.size++;
+
+		update_link_caps_and_verify(&expected_table, link_caps,
+					    INTEL_DP_LINK_CAPS_UPDATE_MERGE);
+	}
+}
+
+static void intel_dp_link_caps_test_update_rates_expand(struct kunit *test)
+{
+	test_update_rates_expand(test, false);
+}
+
+static void intel_dp_link_caps_test_update_rates_expand_disable(struct kunit *test)
+{
+	test_update_rates_expand(test, true);
+}
+
+static void test_update_lanes_shrink(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+					  LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps,
+				    INTEL_DP_LINK_CAPS_UPDATE_RESET);
+
+	while (expected_table.max_lane_count > 1) {
+		if (disable_configs)
+			disable_configs_for_shrink_and_verify(&expected_table, link_caps);
+
+		expected_table.max_lane_count >>= 1;
+
+		update_link_caps_and_verify(&expected_table, link_caps,
+					    INTEL_DP_LINK_CAPS_UPDATE_MERGE);
+	}
+}
+
+static void intel_dp_link_caps_test_update_lanes_shrink(struct kunit *test)
+{
+	test_update_lanes_shrink(test, false);
+}
+
+static void intel_dp_link_caps_test_update_lanes_shrink_disable(struct kunit *test)
+{
+	test_update_lanes_shrink(test, true);
+}
+
+static void test_update_lanes_expand(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES, 1);
+
+	update_link_caps_and_verify(&expected_table, link_caps,
+				    INTEL_DP_LINK_CAPS_UPDATE_RESET);
+
+	while (expected_table.max_lane_count < LINK_TEST_MAX_LANE_COUNT) {
+		if (disable_configs)
+			disable_configs_for_expand_and_verify(&expected_table, link_caps);
+
+		expected_table.max_lane_count <<= 1;
+
+		update_link_caps_and_verify(&expected_table, link_caps,
+					    INTEL_DP_LINK_CAPS_UPDATE_MERGE);
+	}
+}
+
+static void intel_dp_link_caps_test_update_lanes_expand(struct kunit *test)
+{
+	test_update_lanes_expand(test, false);
+}
+
+static void intel_dp_link_caps_test_update_lanes_expand_disable(struct kunit *test)
+{
+	test_update_lanes_expand(test, true);
+}
+
+static void disable_random_configs_and_verify(struct test_config_table *expected_table,
+					      struct intel_dp_link_caps *link_caps)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	struct link_config_set config_set = {};
+	u32 disabled_config_mask;
+	int num_configs;
+	int i;
+
+	num_configs = get_num_configs(expected_table->rates.size,
+				      expected_table->max_lane_count);
+	disabled_config_mask = prandom_u32_state(&ctx->rnd) &
+			       GENMASK_U32(num_configs - 1, 0);
+
+	for (i = 0; i < num_configs; i++) {
+		struct intel_dp_link_config config;
+
+		/* At least one config must remain enabled. */
+		if (expected_table->disabled_configs.size +
+		    config_set.size + 1 >= num_configs)
+			break;
+
+		if (!(BIT(i) & disabled_config_mask))
+			continue;
+
+		get_nth_rate_lane_config(expected_table, i, &config);
+		/* Don't disable a config twice. */
+		if (has_config(&expected_table->disabled_configs, &config))
+			continue;
+
+		add_config(test, &config_set, &config);
+	}
+
+	disable_configs_and_verify(test, link_caps, expected_table,
+				   &config_set);
+}
+
+static void get_params_shrink_step(struct test_ctx *ctx,
+				   int num_rates, int max_lane_count,
+				   int *rates_step, int *lanes_step)
+{
+	int shrink_mask;
+
+	*rates_step = 0;
+	*lanes_step = 0;
+
+	if (num_rates == 1)
+		shrink_mask = BIT(0);				/* shrink only lanes */
+	else if (max_lane_count == 1)
+		shrink_mask = BIT(1);				/* shrink only rates */
+	else
+		shrink_mask = rand_in_range(ctx,
+					    BIT(0),
+					    BIT(0) | BIT(1));	/* shrink one or both params */
+
+	if (shrink_mask & BIT(1))
+		*rates_step = rand_in_range(ctx, 1, num_rates - 1);
+
+	if (shrink_mask & BIT(0))
+		*lanes_step = rand_in_range(ctx, 1, ilog2(max_lane_count));
+}
+
+static void get_params_expand_step(struct test_ctx *ctx,
+				   int max_num_rates, int num_rates,
+				   int max_supported_lane_count, int max_lane_count,
+				   int *rates_step, int *lanes_step)
+{
+	int expand_mask;
+
+	*rates_step = 0;
+	*lanes_step = 0;
+
+	if (num_rates == max_num_rates)
+		expand_mask = BIT(0);				/* expand only lanes */
+	else if (max_lane_count == max_supported_lane_count)
+		expand_mask = BIT(1);				/* expand only rates */
+	else
+		expand_mask = rand_in_range(ctx,
+					    BIT(0),
+					    BIT(0) | BIT(1));	/* expand one or both params */
+
+	if (expand_mask & BIT(1))
+		*rates_step = rand_in_range(ctx, 1, max_num_rates - num_rates);
+
+	if (expand_mask & BIT(0))
+		*lanes_step = rand_in_range(ctx, 1, ilog2(max_supported_lane_count /
+							  max_lane_count));
+}
+
+static void test_update_params_shrink_random(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+						   LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps,
+				    INTEL_DP_LINK_CAPS_UPDATE_RESET);
+
+	while (expected_table.rates.size > 1 || expected_table.max_lane_count > 1) {
+		int rates_step;
+		int lanes_step;
+
+		if (disable_configs)
+			disable_random_configs_and_verify(&expected_table, link_caps);
+
+		get_params_shrink_step(ctx,
+				       expected_table.rates.size,
+				       expected_table.max_lane_count,
+				       &rates_step, &lanes_step);
+
+		expected_table.rates.size -= rates_step;
+		expected_table.max_lane_count >>= lanes_step;
+
+		update_link_caps_and_verify(&expected_table, link_caps,
+					    INTEL_DP_LINK_CAPS_UPDATE_MERGE);
+	}
+}
+
+static void intel_dp_link_caps_test_update_params_shrink_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_shrink_random(test, false);
+}
+
+static void intel_dp_link_caps_test_update_params_shrink_disable_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_shrink_random(test, true);
+}
+
+static void test_update_params_expand_random(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, 1, 1);
+
+	update_link_caps_and_verify(&expected_table, link_caps,
+				    INTEL_DP_LINK_CAPS_UPDATE_RESET);
+
+	while (expected_table.rates.size < LINK_TEST_NUM_STANDARD_RATES ||
+	       expected_table.max_lane_count < LINK_TEST_MAX_LANE_COUNT) {
+		int rates_step;
+		int lanes_step;
+
+		if (disable_configs)
+			disable_random_configs_and_verify(&expected_table, link_caps);
+
+		get_params_expand_step(ctx,
+				       LINK_TEST_NUM_STANDARD_RATES,
+				       expected_table.rates.size,
+				       LINK_TEST_MAX_LANE_COUNT,
+				       expected_table.max_lane_count,
+				       &rates_step, &lanes_step);
+
+		expected_table.rates.size += rates_step;
+		expected_table.max_lane_count <<= lanes_step;
+
+		update_link_caps_and_verify(&expected_table, link_caps,
+					    INTEL_DP_LINK_CAPS_UPDATE_MERGE);
+	}
+}
+
+static void intel_dp_link_caps_test_update_params_expand_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_expand_random(test, false);
+}
+
+static void intel_dp_link_caps_test_update_params_expand_disable_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_expand_random(test, true);
+}
+
 static struct kunit_case intel_dp_link_test_cases[] = {
 	KUNIT_CASE(intel_dp_link_caps_test_baseline),
 
+	KUNIT_CASE(intel_dp_link_caps_test_update_reset),
+
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_shrink),
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_shrink_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_expand),
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_expand_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_shrink),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_shrink_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_expand),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_expand_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_shrink_random),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_shrink_disable_random),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_random),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_disable_random),
+
 	{}
 };
 
-- 
2.49.1

