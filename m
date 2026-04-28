Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +Lq9Gxqu8GkfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E476485469
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BC9D10EC3E;
	Tue, 28 Apr 2026 12:54:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dgBeTxUB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98EA310EC28;
 Tue, 28 Apr 2026 12:54:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380882; x=1808916882;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=SkEklRQRt2duwGIHvyBKbNZJU3s6TeyptPheP8SduP4=;
 b=dgBeTxUBpygRBUyvozs0AU0BpmfGRctXixdvgMKyI9CWi72zgedV5j8u
 i+bfTvryA/bUBsE8R09rs9pVXxjh/2MjnxMqZngRD+Xi8ELGiYnoSbut5
 oDInaYMZ7D6HFOHe+sNNtH3WkLaAPJxcTOS0UMTzJ5Wpx4teZMJmcBus7
 V45wIBpjJEEoBqk+wAXykFLya1Qyq2zoBwClo1KlON7lc+e85DzomvBE8
 ngTPSU64TzgrBvl3RMhc89g8wyB0bYvcO7tsAOvR7HAdcyBAXEreiLOhy
 t8smrS8zK01p/xhUOy5oZju+u5DCZ2rUndXOy8iXUQ++koU+lcQWEYCs1 w==;
X-CSE-ConnectionGUID: UuTYMbn+Rzq/mA2KVdlOKg==
X-CSE-MsgGUID: ZbilQ3USQkirEk/wpZH4zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893800"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893800"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:42 -0700
X-CSE-ConnectionGUID: JXHciZwqRz6Nyk8AFKkjiw==
X-CSE-MsgGUID: zzw4ghh1SBWKSN9XiT+/dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="272083550"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:41 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FPqZhsnA/IfA44vDpnlFzaMSaMnTY5OzMVCLzgaThgigh+3TTGQOjsS9D+V7Klfk0qJ8u6/EJeC4vWu+b1ONprOiCSTt3ZplsLVcmDMZdOTywguvKFto/eYXaHY4Ez7Ku5A9+Rap5uggKVvKGQUpbmemYvMmfDOVaek15u7Du1YplcKUxC/VFm9o4NEomJPJ6daD8arNdlzYIqlU+0DxqgdUo4g0WX3m5K1023lxytZ1W/CpKdzBC3iAAm3PxXorUj0OGXLu1TvxASShZOUbGVFDwbIXcE6Um4GLcl7rwzBs3E2aGH880c54hnbMjafkjM3Qyz7QXmTK805jSwGdFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C5XsOIKsIAKpp08rVHygAaRrVxo3m0QYLsfZgXeWtuc=;
 b=L8y+HJjd5skyr0sZj0rCN4oUQ2VmyirHrQCTbt3H6VV/UNPtqyh2xh7Dzqup7el+ItDtWqYh8886g6+JKJ3SKR/xCZBAb9RgYWXhDLmlMzwTT3PIWw/Zeh2Q52h7vdmwVT+qpdYE7CiB4tGlbB2ASJUUTEANbZL3dg2YnWvTckBsuqCuVCR+ukDlQRt91SodVmN/d255n/YW6vPHrQ23TA+EI4933C8HTwzkdT41HEMSGoLsqTBi0D5DkFGW7g66cVZEyPf4ONCJ2P/lzPKO65sKRINeLTL0C2CjiT6m1Ed1dv/TKcKue+NdSOWLcYz9E1WiHExWojYKtWpx4XcSfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:25 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 054/108] drm/i915/dp_link_caps: Move max link limits to
 link_caps
Date: Tue, 28 Apr 2026 15:51:35 +0300
Message-ID: <20260428125233.1664668-55-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: f11c9b60-a41a-4198-22b2-08dea5253d01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 7WYI5qKBbwdxqz7xc/EStMll0U3ie5/7txRPeoN52DoEFHhrO+kZf5nbbJX+VE47EbUY5g3fbGCGBDN1jSIRIyIU0i6JwsHTT5oHbBPXFDjZGACtTZuubbNK/kHzCX/s55Q3/G7bpjzmJMUWchpYoSTc6gl2o1CySTmJLC9Zin/S4wuI7U8l0vrfVyp/CkbJx1NQJcXxpA7j9dHfQAbreU5rZEld9JB151Ks16f6lRj5VwT1rLeBQfofQVZqdut3n5/LM4WOM0059ru33hfLApzYUoQ3Gqdn5MAyp+eZf7BQLl7hOJPRYGRzhCKLrrRmqulpQqeXwJtiW7q6vNSBCtyV8ZPH9MgwLCScn0udzKS1jr4oFaD7DXCi9burpMgUrMsRbXKr1TC4DVjd317Wuwb0MEJrFvA/7HW3FFucLfaH1R0qizCrJMUC606a8WBTQohcr4QMTfoho9FRJaaS3vYLrZxf+rRbkV7fsveK7BuIB0mwsLxO39u8vaNnmYABQcw5KcYGcm2JS8cBXX79J06ErvcwIDnGJ72nwGaopzGa88c4NS5RoV+YorYiMkP+FcgEg4uEZA2A512fYXggxamzkYRCwK3v4rwcHr7v0bMl3lBLykRTzTu0/OdbiO+fLM0IYyz1svzsG1dIgj8QAa0AqNIroGLZ+1OKigvF0tJ24w5rk/Kvj6NuJ7JqgAdXBIRQTgYIADor9Eejzh2tUzR/jYhINEMaL0HI7Q2n8G4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6EaaXnHRh2k6RJ+O7qc58Q4KcUCfqhgZuoyhUAid3w1yu4vWCM2Ka9Ww7VLN?=
 =?us-ascii?Q?c8lyKWOTIEITVxSbBAji8qOzw2+TX/BBPfu9jVfFq3Dm0iQghgVdJTCdtGUw?=
 =?us-ascii?Q?umVVhYBnDS4Ov/vSyhd9p5XFKOn7/Nvr+xk/UPkN55mjYUGtH4FAh0KVniYt?=
 =?us-ascii?Q?g3efqIqmykb+FfYr5IUAKusvE7f1f9YkCnF04HL2ftzfl5HQthUrlSMWFNmU?=
 =?us-ascii?Q?teduIOj3LFMedc3oRkc6XSYrUZBdxxcRDPZGoi3Dhr7b5PfkSjXTlFfqwyik?=
 =?us-ascii?Q?M5WlsnlwSL5ppvwkHytHxsDiBTrz5fPU1cD4euDPV3nqG1kcGgDqr8paGs8/?=
 =?us-ascii?Q?FebJOCdA4tbJetD+n1ihAImndr2R+C7xoICHRGn1//Fbl5niwJmavRUyH5NZ?=
 =?us-ascii?Q?zyULd6dykTsf2c0oJgd8y4PBOGPIwWGXEomRvbYy10VK9zPm+ARQm4/wzdM8?=
 =?us-ascii?Q?MYNDHUbRzxZuH2Q1A40ME0SivORRGc+ldUaIKkPNFxcVYmNB7yR8EoAEQ1tP?=
 =?us-ascii?Q?EVyTGuZR1hHSMz8/0V84qP0TGyES+tjvtKWv7kAr9FnxsGhonzPOFYYxq+B+?=
 =?us-ascii?Q?3iP2fbnpdg2cJMRflr4AKpPCWz0FaW3Dfhn3vlP2QM3JLCiitpkVHGEZsjBT?=
 =?us-ascii?Q?/fr+wqaQBbyNmvUjqYEpATbwKoX1WsNLHjEMPUOokYxBqPZQQGuZMfZFeF6Q?=
 =?us-ascii?Q?zymt6INiqcEiXeOOS5WTtPzoOEUrILMUrGSyZZWY0xPGNTL2BJ1eAMWG2wiu?=
 =?us-ascii?Q?XNfSWXld2oh8tAxEzEWkOAd6Lf59X5jYZdyS6+sV+S96ZQsCuk/F6gQUUI0Q?=
 =?us-ascii?Q?THcXVyiJCedtKuiPLdAIHm+NHR6YOulYDbNTab0dR57GAf/+hiWWG90y8WZ1?=
 =?us-ascii?Q?49R3FaFtM5hP97wGSuyQOF3NFbh/iQPdJvSXSWQpZ25/yBY0u8i/OsKERZ5w?=
 =?us-ascii?Q?oltiT8k102rj8yO8XEjMnEzAhidQABy2K/qmrrCbkUbQVQhAz7fYDfJYWjLs?=
 =?us-ascii?Q?YD8qbj9xxeuO5xCSGrsb7FbQ30dveRT4E4T1PXsp/VGkZPrReanAhZ257qE/?=
 =?us-ascii?Q?zto5YXLRpNEZyL1oTFrXJykRaANuMy1H+dfGTy4gZD0ygCBnvrA3RzQuJTVV?=
 =?us-ascii?Q?UhoyBi6aiSQRi0twNhWMUjGXzJE/QBncSvLFDug7PbU2clv/MI1hekXoSqkF?=
 =?us-ascii?Q?Y1t06C8+Rqix0/FYhr94qLupXQJD6prcnSBkaYaDt96srrvtmDIcAQ21BC5d?=
 =?us-ascii?Q?vaOikOhij9KuPhoBQILj+G5meak6n2xR8fOLIWm85hQA/AnOR5KpcvY2Tn1h?=
 =?us-ascii?Q?U+5kW8CmW5QwoIGJKe6oyQRs9P5mL4OIU+ICrrQDV+st3QvbrexReCYbuTrM?=
 =?us-ascii?Q?e8gtSORPq+Gk+w/S3OiXhn9mHwaRO0pyMu92USiU3ffwUmLJyxJWPsj9ZTbc?=
 =?us-ascii?Q?bDUlwX1PbN8ovC1mC5oL5kdYm5wYTkRwvLD2gCzR9ffF1ypoNLvqJaSZsCYQ?=
 =?us-ascii?Q?9uK3pRlq/eX9EfIcXRiLG/mPYK8cjXg5vpZZiF6uJ90S8BzdIEY4A9L6q2+O?=
 =?us-ascii?Q?dXRCgMz/E9w45uNyiKvhTwWq+PIXLhovt1+QZDnopNFvH3doEGTLEwW5/khU?=
 =?us-ascii?Q?3fQfaZS75xPhZDh/lF1vkZPKnvRog1mPM6SLhrBW5tluULH7fWZ8zKEZZSEC?=
 =?us-ascii?Q?WbyBbOofYxmv0my++Ad0bmBNH3wvDJz4ukOUJvwdKerm1r2dH2VP30IoLTG1?=
 =?us-ascii?Q?me23nucnMw=3D=3D?=
X-Exchange-RoutingPolicyChecked: ZvbHKFupnSA31EV0J4Fq2N6SqRK23oK5g9sMeLNtINmxTJrREc/qYUz4QiG8GF2xfwvmDAfIb723Q6pQTrEvXyvBklGIRxS88yIe1xGtNnrriziVHb7ZvzDM3wKbCExsFRT0136IG/gC9vSJfjVy2T9VOBNwAiq4ofxKrhKRCcqxWTdaHTkBPLG7TpzOqiC2QaU4QKr7gRLtgvEDB8DRlJbeKRrXAbSIcYWc8B2dQZjUnJ+5tXfsZF5Cv1u5juYUhLEvUFj4mS9CM7B57DdF62qngyAV4z/k78dWmhsZYNIWcd2MVfb6u2wXb/2db2PLDAKc43S01uPl83AMe4eAYQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: f11c9b60-a41a-4198-22b2-08dea5253d01
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:09.1290 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jkWSN+siSP805lJ7QjJbumFvggWI/+dIrEAFG9nKzVu6kqptrdQu2BpOclFQtb4uamlOpiwvRq2THQtdd1yNmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 1E476485469
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

Now that all users access the max link limits via helpers, move tracking
of these limits from struct intel_dp to the link_caps state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  4 --
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 56 +++++++++++++------
 2 files changed, 40 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 71cb45a2374b0..b01f4d07ba862 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1829,10 +1829,6 @@ struct intel_dp {
 	struct {
 		/* TODO: move the rest of link specific fields to here */
 		bool active;
-		/* Max lane count for the current link */
-		int max_lane_count;
-		/* Max rate for the current link */
-		int max_rate;
 		/*
 		 * Link parameters for which the MST topology was probed.
 		 * Tracking these ensures that the MST path resources are
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index bdb0d31b0cf03..6d0ce343e7b04 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -45,6 +45,36 @@ struct intel_dp_link_caps {
 	 * disconnects.
 	 */
 	struct intel_dp_link_config forced_params;
+
+	/*
+	 * Cached / settable upper bounds of the allowed configurations.
+	 *
+	 * max_limits is set via the link caps API and kept updated to the
+	 * actual maximal parameter bounds of the allowed configurations.
+	 * Such updates do not increase max_limits above the value set via the
+	 * API, except when max_limits is reset, see below. The limits (set
+	 * via the API) will constrain the allowed configurations.
+	 *
+	 * max_limits is reset in the same cases as the disabled configuration
+	 * mask (see config_table.disabled_config_mask). This restores
+	 * max_limits to the maximum parameters of the allowed configurations
+	 * as defined above, with the previous max_limits constraint removed
+	 * and the disabled configuration mask cleared, i.e. constrained only
+	 * by forced_params.
+	 *
+	 * max_limits.rate and max_limits.lane_count may come from different
+	 * allowed configurations, i.e. the (max_limits.rate,
+	 * max_limits.lane_count) tuple itself may not be an allowed
+	 * configuration.
+	 *
+	 * TODO: List the events that reset max_limits, after the
+	 * introduction of disabled_config_mask.
+	 *
+	 * TODO: Make max_limits reflect the maximum of the allowed
+	 * configurations at all times and stop making it settable via the
+	 * API, removing it as a constraint on the allowed configurations.
+	 */
+	struct intel_dp_link_config max_limits;
 };
 
 /* Get length of common rates array potentially limited by max_rate. */
@@ -226,10 +256,7 @@ static u32 calc_allowed_config_mask(struct intel_dp_link_caps *link_caps,
 static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 					  const struct intel_dp_link_config *max_link_limits)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-
-	intel_dp->link.max_rate = max_link_limits->rate;
-	intel_dp->link.max_lane_count = max_link_limits->lane_count;
+	link_caps->max_limits = *max_link_limits;
 }
 
 static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps)
@@ -266,10 +293,7 @@ static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-
-	max_link_limits->rate = intel_dp->link.max_rate;
-	max_link_limits->lane_count = intel_dp->link.max_lane_count;
+	*max_link_limits = link_caps->max_limits;
 }
 
 static bool max_link_limits_valid(struct intel_dp_link_caps *link_caps,
@@ -378,8 +402,8 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
-	int old_max_lane_count_limit = intel_dp->link.max_lane_count;
-	int old_max_rate_limit = intel_dp->link.max_rate;
+	struct intel_dp_link_config old_max_limits =
+		link_caps->max_limits;
 	int old_rates[DP_MAX_SUPPORTED_RATES];
 	struct intel_dp_link_config_entry *lc;
 	bool link_params_changed = false;
@@ -432,17 +456,17 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 		link_params_changed = true;
 
 	/* TODO: Update these as part of the rest of max param updates. */
-	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
+	len = intel_dp_common_len_rate_limit(intel_dp, link_caps->max_limits.rate);
 	if (len > 0)
-		intel_dp->link.max_rate = intel_dp_common_rate(intel_dp, len - 1);
+		link_caps->max_limits.rate = intel_dp_common_rate(intel_dp, len - 1);
 
-	if (intel_dp->link.max_rate != old_max_rate_limit)
+	if (link_caps->max_limits.rate != old_max_limits.rate)
 		link_params_changed = true;
 
-	intel_dp->link.max_lane_count = min(intel_dp->link.max_lane_count,
-					    max_lane_count);
+	link_caps->max_limits.lane_count = min(link_caps->max_limits.lane_count,
+					       max_lane_count);
 
-	if (intel_dp->link.max_lane_count != old_max_lane_count_limit)
+	if (link_caps->max_limits.lane_count != old_max_limits.lane_count)
 		link_params_changed = true;
 
 	return link_params_changed;
-- 
2.49.1

