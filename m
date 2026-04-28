Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LirDuCt8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7714852E7
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 446D210EBE4;
	Tue, 28 Apr 2026 12:53:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i63d0GnO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36AF510EBDA;
 Tue, 28 Apr 2026 12:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380829; x=1808916829;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=kJJZuYfeycpJFWk4Fdz6kRLL5994TyFIoI1hl3Vq02g=;
 b=i63d0GnONUa3C7KDfoIyjZjA4wZN+W7c6S3cxkinvTqbbvcNFJdVGzZu
 f2zCGTA77XOwvW8Sj+/Q0VxzH0NQdpQPYzj0KFx4WZ23E85urVU8x5uy5
 NMPo2hL/zsj8BbfyLW76DdEqbTJKyUL9IesKEznYs6YiQCCdGHqH/c2DY
 ZESKSDOlSsfGp+wkIwAELX6MwFS+bV1o7if74loB8Mg3qlxOJQFUQdTM3
 RR1wnAALBKCFCpH93ulbuEKdQceF7M+/fz9fu9vYs680FlL92pWFViN4C
 HKF013tOb72yw3g0kUkDQGDQNkKVMdAjymNcW01An8TZlZuiEGOvXGavY w==;
X-CSE-ConnectionGUID: wJcHl0XdRzWwP+8D1o0yBg==
X-CSE-MsgGUID: BjW4ymggS3SZPFpago4fog==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398662"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398662"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:49 -0700
X-CSE-ConnectionGUID: 5Vo4szreSH+AufAgPTXT+A==
X-CSE-MsgGUID: ycFFhS3OQlqfNsweJe+2yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911406"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:48 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:48 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:48 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.52) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NfV6X5USvf/YLTWnobflRTthAZKDYE5DDcL/+429RpSNE1xyCSYIcLdgj1BfgqbleRP/FtqufYs/cQKKuDi333D2mkKeIeOaMMJ6314VHlMvH9k0A0+sx6jCPVFsIpxQrhkL7AmE6mnbqmDUUJP9H2Kv4rJvAPHNF3F3NFfyYejmzH4me4sYHiwmISaIlikPanYNDhiNqkP7qorDDZ7W3H3Cnw7q88iKIGpLBL38V9E98/uMRfmky7+lDVtlG+eQWPyj/7pbQJGi3ghQznpL/7OS2NzwlvS3P5qNe5FE1kKD0RN/6xjjeJbMXaDC12EZR3xO3ESClYYzPmxMmkW4eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a43P3owU6rAYfO1sWAOIVZfmqScBXcx3IrqfFdwFtPg=;
 b=XxCP+I1igkA3onrFSBt85EFeNa4Ttn/JuEYOi4c5nkkHOMurvWgCDKxEw25tXHpWtGJj7oRQYsSkpZ4aa69mBDuJZztDHjsIfm4LgSp/d8OQytDa4z20hCNFb8U1sWSlYxDs7NRZQQyhzERUN4scPuyjF6U155KKGUyc/q8ol9BYqEZC2VatJMWhNmFMV79Wmbwe8db21igVNR1WKpjlMDCKE9QyONaXMz4Lw+BXQ6Jp8RnyvT2kWwjzTGGI3GJFQpkjO//5y2wuQdvo/EHaG6cNaXUOj/vNenQNOjPvOAp6lGpeR9PeeMC6YJLLrnQpt31xElP4xwVHaf19RlJi6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:53:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:43 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 038/108] drm/i915/dp_link_caps: Rename helper updating the
 link configurations
Date: Tue, 28 Apr 2026 15:51:19 +0300
Message-ID: <20260428125233.1664668-39-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 3da0a208-b274-43b5-84b8-08dea5252dc6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: eUnnbouTPy3QIDJUsgmLq+n3IDYRzOR9kHb4KcczymxJbdEw3qEDCNyLAPAMPaE02feoqyx/TaVc4yaf1WkU+9FnC4OPkCCWdBYB9O+Si7iidDNyFEw66f6+ka1jGFAzZJ+c++wUoSYn9AemSGFuNngqc4e1h+l1XgcMYFD6Lky20BZa8G99PFCn+pLjCOaRO8+xvNFCDVSNJnIx3GlZJNP2NilxCpjISbHSa8ZVbuh0Z6iB8/kBV8xjmwPTySqJXSatprc70D55bKGmet4TrHQQ5qEbk7PE0m6MsAMnHT2xh8lSqWp94HhH2ExMAEhrFcGGWUJzBF0RBdTKyPQw2ZR+IUd0yGB337voGnYWXaOACHlR7TFjAQ+fIcVxSz4tnNRyvbZmfwHscuE6gUkAbKhStAnw8BfaIi44ByIcKafw62TsHg5XmzYc9vD6h1aQHmXSKnq4PVUd48mCNpEx9UkKI4ptkc/dPFqjlRazYPFRzSDJZry340K5K4cPQjE7sgXhJRzJ3l+39irGZEBo76JtOZ/IvQ2k59FfXH1udJsbLaXrZg9QItIi+Vw6llnx5Ltcl1oDfQt3nlzHM5WGHJ+FbeuTFq+q4r9ClapNog9id2qlGoIROtRn61SAyaTkSux3YgCC99HNcRtMQzU7A8IWgIa2DDs1nQs8sLtJw4unfeOmdYpid36j4nnBAyg/c4f7j1sPeYQi2pHc3rtREPMmfS6YVH/JAHyjR2yvNHo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IgJoFFll6wYG5d88XuuZpFsOU4pe6pRE1pvt3KjgOE4ug8BtxbIGk0vyVbq8?=
 =?us-ascii?Q?S66ME8AsIkXbxUfdlD5e9gSAcUp2FE9NTB6lwhIInV/SI39qjuLYWyY3xlwI?=
 =?us-ascii?Q?cRRDxDo1WasWC/SwXbY6oFPLoNajGG3UH6hjUlA3K1yRLSMlnDVZcqISxfv8?=
 =?us-ascii?Q?8xwtWReLx54ZDWft4fYcR17qp9nqwG/rA9DIlElU9y3hmdUBkXZol/TIXOp9?=
 =?us-ascii?Q?W+ugSJhEfIEe5QuWPYi187LRti9wgDevioChN34ZQyJ6A1o6Y9rrk6hW3HVm?=
 =?us-ascii?Q?IPJF4JB/KnMjD//Mplsn1q01vb5jNom4SUxdDJ5unN6ebFxE6eDZRFcWRCQg?=
 =?us-ascii?Q?VBhqKTTQnkWk6tLlP3l3UKiJ+BbYUWg4VwRALuGRVdrAoBbOUY+MrsmqtSjD?=
 =?us-ascii?Q?j6CMnw5vzcmql2pePoMzviATbZi5CSgw2BHgDti3GQ4gPbfgAlvbeSEchD+Z?=
 =?us-ascii?Q?zaiytDMxqEvUo7rAUeCVB1SIObbWoHhxZaBsIY8tePSRRhn4DmcsByDA5XrC?=
 =?us-ascii?Q?GsqbqwELgucgK5VlPF1Bz01Mdpucn4wjwffX3nY6UzYy1qsTvJYWxLLF0dyC?=
 =?us-ascii?Q?onIA/8ko6R+BTHeUZomN2HpJ285SOGUrb5NMDn/YemNEpPB4gBuCONWzASXu?=
 =?us-ascii?Q?CogHw0Xdpy0V4ArxW5whnMUJF4ucejA9BXg/uGdEz5WLMtn0qfKZ4osxXfjE?=
 =?us-ascii?Q?ETW1DtVnpnDnfGoq2RYnSbXddkkvi3Mxzf6FlR8mwErrGlAi6JKB8hzlpjuJ?=
 =?us-ascii?Q?mH24FyYvk6VCJXUSbyRnyzF37mqLGl/fpiURdJVBu0gp7Nc6T8JMLDXHoUnH?=
 =?us-ascii?Q?6KcDNLmD0raIf5G1iTuuIHmD9wJeFaHXyUEr9O5ZDsQCYJsOQJg1uqAId3iD?=
 =?us-ascii?Q?6yALeZG2k6xE8JC6JPNQbo1NpA7op1D6v+k5awGKF464ZIzMHrQXGO38L4RB?=
 =?us-ascii?Q?6kNL3AqPvQH0ya92BWcZyvsDKDZ1NzID6fqFCc2V34/16pOaiKMbkjQPnCeG?=
 =?us-ascii?Q?bobUWXoK0aGvgPHsufTBow1fjmOYdhyqeSnNMsd17tnj1ysQkqEFjergEPVH?=
 =?us-ascii?Q?O2yMQLnH3LNFLR04Cotp5RkJMB3i1HKE2PqJVvGbNIaffukPup1VMT3MWX0D?=
 =?us-ascii?Q?e0GcSZnm6/NlnrH7nC8CCLHL0/kfANtaR7VWNCIbBJ9Tjtvq7yubWVwUIXch?=
 =?us-ascii?Q?uFxEpELwsn6gmOdkta7lCYNdSlCRmWs9RZ5MSg+Tf1lH4xaB/qaiuzsj/jin?=
 =?us-ascii?Q?NpLxefSSkSLqtyWT4tAkj0G2EHNfBTf6L98nMzkERhHXSMZoRUh+ebPZZBWH?=
 =?us-ascii?Q?QO1lnXsrbFqCLL3Ia3olpLyPWJnaverruzO6QJHhSb9/7laT5cFFQJlzuR7K?=
 =?us-ascii?Q?e2XwnmQSpSp7imJHD5Z6Z2A4hFtfvDw/910Nq6egV+WguL1mtCLsOXZ2EL97?=
 =?us-ascii?Q?z3qS+1OtH9W2iqoVFFYfMo0/NtfVwXWG2tvI1fNyxv+IdxgxDjxNB/lvCf4v?=
 =?us-ascii?Q?LpfkR+tAAd4EBRJj370ws4QctAWwai4tq3Fu5eQLmNyxJ54riCR9gWVXLn0p?=
 =?us-ascii?Q?ARtHqFnSZBhsYN7jcsec/kplvkcydWQdyh5ISasxcL7lEYrGsNYmla8ZEpRp?=
 =?us-ascii?Q?ZdJxKFrwKvuQUMaLYCk5n0lL4/jVe2JN1pa6wU8MzdaUKbSOtY6StuqwvchV?=
 =?us-ascii?Q?G4J2wqlxgbjuJj+mOJfwbRSQEVoQ5xeMp7yHFED0dxP3O9HX189z8wOv2mbh?=
 =?us-ascii?Q?sRShE3KudA=3D=3D?=
X-Exchange-RoutingPolicyChecked: bvQYBHXBzraD0iylurJt2tulkwWTPHuscuR2DcmbCka+MQWeSM4q/Qy7EpwAdl58NhSWwH96LSDL4+wNCwpb8L/qTm4qHPSW7XI7ixYA6SIHWWni9xA6tU0ZKW7zgBfgfiNKX8Eu6O6u95b4llQBexsdTf+TQwkPzR2K2wp5IMdZnULrhSzCpfy2kKmrql2EspwYRlZ7Qk5k3W8vHuHscEd5kShJWmctGdXJvUlohUlTR115DTo+9KvNJDH5ESbSslG3lu4JS9PIAGmIJ8gWIRuHVvJumIoX5kJPy14JJooi8Ed44GfnfnqQyfxgbHzA71osxYqYzbgLG1pCv7vrGQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3da0a208-b274-43b5-84b8-08dea5252dc6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:43.5564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D/6tuqkTd0TZzix6oV/pyL6ccrVSezWsl6wHqWbi9YtKe+7s1tDzmY6qLdoyFnKFiUYY+qBVkOj7VgL7jXQAnA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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
X-Rspamd-Queue-Id: DC7714852E7
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

Rename the helper updating link configurations to
intel_dp_link_caps_update() to better reflect its functionality.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 25f8ac21ce60c..e0f8dc35574f3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -711,7 +711,7 @@ static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
 	if (!current_common_caps_match(intel_dp, old_common_rates, num_old_common_rates))
 		link_params_changed = true;
 
-	intel_dp_link_config_init(intel_dp);
+	intel_dp_link_caps_update(intel_dp);
 
 	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
 	if (len > 0)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 0034dd439e59d..6e021b616934e 100644
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

