Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id InjxHhqu8GkgXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F14485472
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1500A10EC43;
	Tue, 28 Apr 2026 12:54:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jt9wEGVJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BAC110EC29;
 Tue, 28 Apr 2026 12:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380880; x=1808916880;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=2w1EQBNLKB+B7FyfqjWXj4M23rZMcO+FFvwljhlABBo=;
 b=Jt9wEGVJN7j3cOcGEO8gF6yiUsRBluEb3Snc9lkf0w/583cBXYjNtMNA
 FXuq2Y9euvNwPwmtDbKDg3h7J/SCNdjhvwNUUxa8q+frMPy64V8uQrh8Y
 VdhhvI00rZEwyOqND0B4Vh2JvTQVud6zNFfkZP0roktFaeoNjj5lS4IDF
 1ZPdsJ9q2N5gCfprlR+LV5dzy9vMzgwBatO6nbMAq9e3zwx+mVGP7O5Yd
 2VQKJd7XuI6omhibxEVdfKtnFsvTWp1rIPOf0YkJXjzc37qa+/tBOr3qJ
 uHjEDjCAy1qvE2u7KaFdvB1yiaEDhhUTJtNtbYgtzdc+PJZvgbH3srEeb Q==;
X-CSE-ConnectionGUID: 5O6aUeOLRFePG63bfQWTmA==
X-CSE-MsgGUID: jka66r3WTXGu3LTopqHiyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893792"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893792"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:39 -0700
X-CSE-ConnectionGUID: wWJHtGSORxGgxvmAcbWaZg==
X-CSE-MsgGUID: kKrd7MCJTpq6DhUh6VD9/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083540"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:38 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Vkph6qVovGwmuEdj/YjeIP82zNejquvWFyXA6o2/wTlq0LSdTcxLmjxcRaVktgjhHsSL9rGZeW3x5yaT6dCu/YKs+iYofEqzYRP0ieUDAeCYDyPGLrNPB2WaMegCTAToTyvu2Y3+W4I9lcbkoiSfD2WBBljZPBbnsZISUEtovtq9KEK2FdryR027KgPpg81/suHXjGIncEyLbiCkhHvmqmwz5u+60jEjsNP+fC8yT+ovsa1g0iEX9YXiN92C/CypGJbexsL+9FOka42/3qJsF4FHz4Vq1gcBIXt7kUK/sg61N6kVXmZwh87n9TzcYj3Y0h7Fs1os3EHogqoOpnZTvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3geEqBok6ZMXTbSeCsDnKvTnqW/AkyOhNv6vso2pTkU=;
 b=Hc+d1q7bLNjJH4H0k6FnqymdEe6BjWu3W7CFw4uql1dRhbPq/uliYMlVGyqOrbgPjobiY/upe/QYV2WMalGQZH83fo2cAEbpZEhrVreij/WdQVKqi6NJVzrjzmC/sqKKA3LdtkK0k76T7b+WoGFDBXTezLE5nP6dCECiVvR71xIg7lp/LmG0UsJG16qFgCW/I2Zzan9JcHYXbCxafK+bt9G51t5EgeMJq81LVONYjwBv12DKUrc+1ee4B6ArRhyq4P8ix8/o35hhSEg+lSj3UbfEy05I8bwhio/aac0BfxXL7aUcXDuTN4vFGe8snDbKwAblBQh125qNOHYbIdZXCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:31 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:31 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 062/108] drm/i915/dp_link_caps: Adjust max_limits when setting
 or resetting it
Date: Tue, 28 Apr 2026 15:51:43 +0300
Message-ID: <20260428125233.1664668-63-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: a6f72285-086a-4b17-849a-08dea52544b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: NQkn+bQsmAb0O7iiAUzdV++E3ciioTSBuJOPCT/ji3UkN7fapcbayWktmkEi1xc3Hs80nX26mi8DILjYts9Xa/rnQBKjI7to8JaAsw5s2V+HuWJe83/IUc1lsUPQ6EDXQUDy0cKviMR+W36jtHRnjNoW3DKlHB6nIfMB36MBEZ/+B07fDlQP4Kow7QNAbcgaP9wywKktmo4MjfJVMQJtRLIjwPMCrS2ITcR5Y5nKK+zkUm7Aa417Rk3KkuopNDM6HPNPkMTjjt5KDL8/BXSJ2MnDfNbF3ppxMT/jBwE3ptbep0Zn16otLJddlsFOPoA6oh2hGiA7MOiqT/BIVDOnmyWQNnB2ontZhjjL1SsANgu4MopPt/zLJoaU95wjxy63trIUxjsD5SLfxkdTxD1OH3BIsxXjuELLCsstFt2zPxjwWgHqmshFO1eaIKUShfjFfVJyS0caewLCy19fs4COAejssjvDpCckcBIw/SUqM3B8parJYvUHpBeVsS0bXXp4VdXNss1kTZamI8Cx/40szmXjxbTONqFLoNWlnXV0euu369kVnZdp4F39cvAMb4VEN+NYLb/ifLMjpvdv6gTB7PnWNJ/R9267nP+R8zLiVGcISg3zX4+8XaXSDg4DYoJgOxzC3SmnUs3/A82i2witsHZtE3x49oNH1n8f53/9fx4cHIjkSGur1IEmDaKTcjdh1pJh9aiGdIBMvcFtQykyEBqMZGK5BNumbSw8Av/Xsq8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1r7cJoJlN0l7x9nAid+0qJedh7mVn8EvrcbwbAPyljfA0nSoRxjgNKYo2UPF?=
 =?us-ascii?Q?2uHMmV2gqj38qHTmKfVKLblALbjyD6xmYERE3YBesVRcjZrgocb1u7cGCOJw?=
 =?us-ascii?Q?4gFY1Bi65N5B83IuJifKDKo+meFWQcV5Ga3liqXS6D5GGF4IEto3yLmvedIi?=
 =?us-ascii?Q?Pn4Mzew83d8msZcbGLSo7IujOY7KPlmWQT2TEMNN3wtVLIFPHk9uOkvOUOBb?=
 =?us-ascii?Q?Afhy0VN0we5m8Th8cDGSjlb7hURrOdT38LYYSjPEXkpXyYM51MnbUffG961E?=
 =?us-ascii?Q?zYBOP+W0gEoA7L5a+BCExkRmT0T4Pw6KRnSY8MC5U1BYgHTBjuNC2H1ZxpgJ?=
 =?us-ascii?Q?mSTW/bk5HwemwqjBiCbgda60Rnywr6aEuDIMHyP6VcIVdEFUbsrk/kFjMOEK?=
 =?us-ascii?Q?w03N4FopwCz5C/c/oeVusdibHforHBmkq5+Jzm4OHqOcodl19wWnz1WcSCqJ?=
 =?us-ascii?Q?FOx4ZGVB7d9r1PG5WMyYCZeKFKfzZj38izEW/f5dm4bMJSKvllD4KCfNinMG?=
 =?us-ascii?Q?TWq8OlFu8TagG7vshiuRgh6npVpKg4KOpNpJorh9d/WFlZ8pqewKkUpZ90Pw?=
 =?us-ascii?Q?O5IrxVXO9CjocXOol+t9oLYuwUx14EPR6rd+LXBpPEC4QSl3HmZm5npTkj2Y?=
 =?us-ascii?Q?MT1bw2Dgo05WoUFDxrvBkoKmn53yYhP52utBcejqIBplehjWxecgji2qKlrh?=
 =?us-ascii?Q?eksf1FFnEQ8qSUP02AFBq72O54+J1T+9SNs2pmgpdetfgZDnyx92eZKhqGOd?=
 =?us-ascii?Q?hmBguENJey/6LoRjp2dqjSxrFzglwrmqlPrgol7TZh9Ya84ep0LHP4jv02XI?=
 =?us-ascii?Q?nnuDEt0sifCRXb6WINgivERBjMfRV/PpvtVmufEqWNCQrJZ8QU6aKrb/yN5i?=
 =?us-ascii?Q?LzyiaAbnetZeBwiNyZyIXhR0ItTKzvtgp+URUrSnmT+LYX9hUSZIqioae1ti?=
 =?us-ascii?Q?bkSUx6CPe+QNeRJt0g3eBSx72fP3Fvq5PPxzLeJR7BbKnskLNfHl+IHaVDOV?=
 =?us-ascii?Q?z/AbXigibeSJ6mil3R07u3hDh3/5GJP6OF0f2rjCHMq2LqDDfe+2Vlhf2XuT?=
 =?us-ascii?Q?bSO9NRhAg/40drlT5aRVxoWFFW3tQVrtRTnLm5rgdOBAmetLr8GE75+RvBol?=
 =?us-ascii?Q?SjhPTMde4T0wZTRY7TY9S4FtKg3dt53eEUgkS5U9YwrERr2t9pucH6ceOzmU?=
 =?us-ascii?Q?/TEVWjzN7Lscq75QLS7FMVvKlq+wSgunp/jqeSQIhMbbycFRNjCikbn73ABC?=
 =?us-ascii?Q?PLkcthOK3W6rRK3nJEyaAJdh0CNX7KyP/oiOMOzrqW93VW2o1+P0hrUXvaUt?=
 =?us-ascii?Q?u3NwqQjaJfEnVPbozs1/DqZ+26hrtO+f7q1nTY2GvEwP+mOX2MizvndsvCUN?=
 =?us-ascii?Q?t786NoWYXpgcnSkgoDWdpreYc9XtAQH39vIMPzY6bGHTf4xiXXu5yQO07wzC?=
 =?us-ascii?Q?rsXHwOTi9S8s6BytDZn6f1GLr589yXFL0zfiUByTupRWzB6OkJiD1a/w1cnM?=
 =?us-ascii?Q?xnhrIgrwZkAPYSbjIaGIJScw84LL7ivU+wr+MeLdIWm3P17b40+CqvRhyBLR?=
 =?us-ascii?Q?b8fpz7RnMzOj18EvYTQh6LEk09pAhrVEfck3lihoW+gSwcrhivp09jMYFjQO?=
 =?us-ascii?Q?Qnffz1zAd2F388HZyyY9sSdEegZyrKNIAfUDck90jOSp/Tr2pbZFEryWauOK?=
 =?us-ascii?Q?1oR+QyDN0xVzOdKSx2qeFMxk02NI11jBcdKh0BDQfj86SNgacEhskOro5hXh?=
 =?us-ascii?Q?xscdp6qonQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: CgJ6DJYz8RAyq6UeuCNP9W4cBQsH48brGv/x8LQllx1j9PWwdmCNGxKJ48HA/ELW1xdQlSQuVFdga+SwqJnM5v4VocSAytoCHlrKRcLRuMb/oFEfOc46pd2qNX96/VNTXTE+JUcEmK+uxzywhyFtUYzMTXGTp7XuQgRZmASgvG78A1XwgaUoEZ9EpAHPF73tldvJVb7bgQVhqQIM5kT0+8bILdR3jAjNozJmyiw2rXM+adCf+w7D+KkUZjh37pvNSKBhufzEr6CxeBpWI+jUMF/JUge0G6W49fjbOMtc/baRPxrLttCmjoQ8metmZ0lp/6ldAcWiJL0L1il6Wmj30A==
X-MS-Exchange-CrossTenant-Network-Message-Id: a6f72285-086a-4b17-849a-08dea52544b1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:22.0256 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ASrnu5zwmEh4gxD9USSkSP9AavzOJaK6wZSKO2ajKJisPC8WrLGosXF+SLYAbv/ROtz3jM0IHrDI5uKzmlwHMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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
X-Rspamd-Queue-Id: 23F14485472
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

Adjust max_limits when setting or resetting it, accounting for all other
constraints that limit the allowed configurations, similar to how it is
adjusted during a link configuration update. On detecting
inconsistencies, all restrictions are removed, ensuring at least one
allowed link configuration.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 20 +++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 112d343c6d9d6..7c6259c95d388 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -444,7 +444,9 @@ static bool max_link_limits_valid(struct intel_dp_link_caps *link_caps,
  * @max_link_limits: new maximum link limits
  *
  * Set the current maximum rate and lane count limits to @max_link_limits,
- * constraining the set of allowed configurations.
+ * after adjusting @max_link_limits to the currently allowed configuration
+ * set. Since the old @max_link_limits also constrains this allowed set, the
+ * new adjusted value of @max_link_limits will be at or below the old one.
  *
  * The new limits must leave at least one configuration allowed: the limits
  * must not be below the currently active forced parameters or below all the
@@ -456,8 +458,10 @@ static bool max_link_limits_valid(struct intel_dp_link_caps *link_caps,
  *
  * Return:
  * - %true  if the @link_caps cached max limits value got updated with
- *          @max_link_limits.
- * - %false if @max_link_limits is invalid.
+ *          @max_link_limits along with all the max link information.
+ * - %false if @max_link_limits is invalid, or if max link info update
+ *          fails due to an internal consistency issue. In the latter
+ *          case return after resetting all limits and restrictions.
  */
 bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 				       const struct intel_dp_link_config *max_link_limits)
@@ -467,7 +471,7 @@ bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 
 	set_max_link_limits_no_update(link_caps, max_link_limits);
 
-	return true;
+	return update_max_link_info(link_caps);
 }
 
 /**
@@ -475,11 +479,14 @@ bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
  * @link_caps: link capabilities state
  *
  * Reset the current maximum link limits to the maximum supported common link
- * rate and lane count.
+ * rate and lane count, then update the derived maximum-link information
+ * accordingly.
  */
 void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 {
 	reset_max_link_limits_no_update(link_caps);
+	/* On failure the following removes all restrictions. */
+	update_max_link_info(link_caps);
 }
 
 static int intel_dp_link_config_bw(struct intel_dp_link_caps *link_caps,
@@ -675,8 +682,9 @@ int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
  */
 void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps)
 {
-	/* TODO: Update the limits to account for forced params. */
 	reset_max_link_limits_no_update(link_caps);
+	/* On failure the following removes all restrictions. */
+	update_max_link_info(link_caps);
 }
 
 static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
-- 
2.49.1

