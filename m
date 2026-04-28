Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CGYKUOu8GkdXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E8048557B
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F1D010EC98;
	Tue, 28 Apr 2026 12:55:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jS9KpByy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286E310EC66;
 Tue, 28 Apr 2026 12:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380923; x=1808916923;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=OvQm8HJsstv6xjvbp0ZS6ypr8r6RaQwluc409KwmCbE=;
 b=jS9KpByyXM8F0meMz3+55iiKAGqHKkLqhrXXw6taYjelPLa8QXrcDlNa
 vDXQ/ddZin6/LEuBmQ+z0W6EwXIHU6FnepPI90fLVqKm75hgGVCLTCMuo
 vUVgxq437eAuhujIRbvLBG5jpRuC+pYuwJpBuPACEc++1xSgzHcYGH2MB
 2h/cD3j6Ivzoj+mo5iYQdFr4eKMplDIfOTPce7/krLChAQaNxSwo+2srX
 YnG5ZhrWbbjLc4lmWeGH0LXkN0wyp1s5rOWNLsf3/wsuP1TAlzypIwpFu
 1I4hHMgZyAYr2p2iAtJQBjA3uijhRJfKn1B0AEFrbqwiuyVhcSBdywYLn A==;
X-CSE-ConnectionGUID: AO1DvL6vRqeV0TxqDmwP6Q==
X-CSE-MsgGUID: /XK/kBxxR0ukv/zeLlvCtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318772"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318772"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:23 -0700
X-CSE-ConnectionGUID: Fgn11MdfTYWFjHOZjMsaQg==
X-CSE-MsgGUID: ne6mZ4HLRlO/hxjeWCXgMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818227"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:23 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:22 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:22 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rhwtpb8KF5x9PlILiKmaHln7sRbtqFZYVLLCvy6KYym1JdA5qClcmW3mxlNf6A3PxKulJ0vfa4aZasTRKwraOYQeaZJOwyIkxCJF13KkWi62+urROwVYV8KqQU8Dz23HFz92IKrw+R9LA72RPgM4iZhOPsx4tfckGRUZyvTDppA7e0FYL7S0Xu2wQYCwyyTLxVIcqQqnjUIr0PFsaZDDNHoUcLBO0CMRCrnwToLWJ+xcadSdvp4+p7rT2t4TtWxsoz1FX/meM7eCe86SuoXR4+b6VDK3E0jOOnI6wiq5ahsuCNM8yMpA6c6BS/pn60vviPJj0Ln0MyUm6CEA4gUl1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9YQoSJtBQt9wfukMhMwGfLBIz1psd/YDJsnEVIpMziQ=;
 b=UQe254Cna2J1tNqErrcjFo45oxwmpfjC4IWdtEtpEcyuHjCqjekptLXdvKQByJL3IU3FjqFY6P6fpJg9xaiz3Uu1abv0xCD1IWg/IQq3ulmRRI0Mu9qKbXag3WQrytP7okWNm9RYfp2O7ZzkqaL+eEeo4Z0VUqh4rsFU19L7SAYHek5cw3fVyvWrhQsqGccr4WLhHaWzSU3Zb1rZ2CNSz44THuQbZBm5tezoYDxeQ94WMBLZ53LVqc130PrL/kpFNVcQYFdPgTxQCVTXN/ZckARY4OsmORGyDXrR2kE2WNNdJGd0NuLBJz3lRvs7JBEddfygjSVR0gh9MxIR3nQkpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 083/108] drm/i915/dp_link_caps: Add helper to get iteration
 order for a connector
Date: Tue, 28 Apr 2026 15:52:04 +0300
Message-ID: <20260428125233.1664668-84-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 525b90ce-b67b-475a-cbef-08dea5255941
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: 33C7EDXnyOOXMf39h8VhjXFnqRZPzOk9hqAamPHOjB27rbqWqYrV0Rv3kmsI5ZWAO9RlH5KagAqr86Wsia912Ukw39DAd7MfFPGVGJiexqlwvp2ZmFoLPgEdEq0zIt0QO73AeGG91U6LdH0bAtJKDRdy+blr+8meIpCD6JgMZS1J7KLJfeAejg4hcA6d3ILh9BAGdaiYFzp6FnnpjQUqV8dxLuba/RUf5YiDNYGj4iAl8dLVtg0MzrbQzx6syTTTdd+SZgvXuCX0gWEhXuV92I2Osbo0oMhcbJjPcnUUip5KXS6nROTs7rC5Hz5u1RrCAURH/L29oWkPGu16qGx+R/87wX4SsIbhrT1zM91wEqGkXchoJVL7RQU5DjTJ1QqkgITeZfIEoJ5sauwkAMQp/QU5Hhhi69Ru2DVkzHRqqHEKPy0e3+OLcDCLOv1HGyAKBO1ghNKixVFcmMzN3vCLvXNHjDj6xzngM8inwBbvv6d6fmOmBUKj4hflIOZRhavLlcUBjFneOUavFplM6NCe2jjpf/Idhw34P/t7+aiUCp/Adkaox9nzfqgcFli9YrE/pME4dittegecJi7yiNsHYaSSa2rGLM3KW6yOPLQCaw0sGb02hsua4MVkrhMtKmFrWnVDbXo0U0uR4iayO2oKf0UCnCPuRBfCyvgVICgjTpMjrcg1dU9avOoNcmim7wap1P/mkcOEoExMvhTlCY4hYO+4nvWyCk3Mey3I6g1Ovow=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ucwhfcGWdFcAlm8nIHz43aa9EtUUEPtPT6HAvSro1n106gZ2e4msrKZqhi1c?=
 =?us-ascii?Q?gvGoVi9QNXdYrJiQ7icImnvuP95/cFNnJXtK01QSPydPYcWr+fZgJqUZOr47?=
 =?us-ascii?Q?OnzLusw/S2VFwAQBTbvHaCZH+R9Y+hIKflQtXEykhBZgLIl/OJeAyIk3NtQM?=
 =?us-ascii?Q?enbKpfF/HKDHBJvjAKqz4CWgIZkLy7ryG1BhJIGa/so4qtrd36jCqTQz+nEF?=
 =?us-ascii?Q?Odw9HQ0d9CE9J4IX5/9TfaRew5/vLtPv+jnkjX55JjzQP+MsstISJWTVOJBP?=
 =?us-ascii?Q?igIbDeKXBeHC5VviL4jA5vnxPj+PoRvtY/3FWEdPBSyCrEngGV+nk4k1UlFS?=
 =?us-ascii?Q?wcLT7vCPCkHQTMPLlP5CvdirWAhKKxyDBFhN1o15Vvvr/fPVcatdmTkhi0ty?=
 =?us-ascii?Q?D0WqRKe+MSWYAFPdQ4IhfOEdTF4Itzi8Q7KAdXB2MUNgo9szapIQx1/Yibdg?=
 =?us-ascii?Q?grsZDHUVZFJn/0LD6uGCgVcKJsqeG1ejvY1rDWkUzoKRLTFN1DBfOpNP8IcO?=
 =?us-ascii?Q?kajVlEQis5mqUgu4F/xxkx+2h6a/kmzER75HwiW4y2RU7gED7l6rVdIjlJM6?=
 =?us-ascii?Q?XLDkWOXyrc5WsTm33Pj7zB4MhKR88JH5qYTZeIAAGCGJatP2SSoNYslKWQu/?=
 =?us-ascii?Q?FbvW7vLPZ3fWnVp2TqkpFMhhPclcy+rgqJPN6Yk9BPOOXR8HJucT5QjU2bRY?=
 =?us-ascii?Q?CoWxm7rlxei013wEocOsVWOeqV3+ET6rAtYtzpmPP5TlYZAehgSoY+f/e0dB?=
 =?us-ascii?Q?rlDokDyX5GqsUjgzD3wTu0YwXLsl6eLs8RnMsEHzpZCklz4xAcX7Ro2ynBEN?=
 =?us-ascii?Q?RpKjqMb/9YzughtdeWecjvEy9S02C83zVLPl1Qc2LOSqjy8HQYZGYfcZgBtd?=
 =?us-ascii?Q?ge1+BLPiIwQhskMQAXzo9ehGWKbgNtJWAGwbPRhbevp09Jqx9ojd4ifPMEt7?=
 =?us-ascii?Q?6SKEkjTmoyLuKGc1GAQPpDq1hLu7qzZa4vvwYJj2zSW1AIdddBKP/F0Eqptt?=
 =?us-ascii?Q?7A+E5e8kIQg4MVgsKM5aWsuQ2x+XZZQwibBW0nWGZ5yrJt/6GJ0UfwBvgdOF?=
 =?us-ascii?Q?zw/Zb5/95Db1J5jFftRcimkfYniO3Nr35rcaWjt/l1TjaLy/zT6QdZo0XdEx?=
 =?us-ascii?Q?w2AfIaNC5FERsa9oDEDgMFpoMEzkU1wek+UPfBlZvWH1pLdSLggwUSExZ6Jn?=
 =?us-ascii?Q?LF4J0c0/bYxtpse1RK6+2WNZaeKVY+AM9mObXpwLJzy0Di4vr5TjPAQYeVrQ?=
 =?us-ascii?Q?vlGU0uIeZBB0KRE1qFAcu58nxxRWHk36CgWVu587m1DbwfsPw+KJoBmHzkZC?=
 =?us-ascii?Q?gqxDXo2QfhoKWLTsbawP2HZD9hgC5lDbj3McpPvPV3u5x0+EVqf5GKj00c5q?=
 =?us-ascii?Q?MdRMTwK14wiY8NExmHBy47d8sLWvEhWMlh1E5/EiKSfrUjh4bpfQUE6lUg/f?=
 =?us-ascii?Q?r4Bpy9FgYvAi3XiSkNqCZQGT1ZknkcyG+QkpL0aps+G680K4v90BtkN0hYXJ?=
 =?us-ascii?Q?pmGTGZ25IKt9ZqpEpDKtuqerXQNH295f7dIw/L0Ho0doSjo8HNbNYGTBgvhQ?=
 =?us-ascii?Q?xyaM+ZA1ZQM99IpwkYRgWvyI3Mzp4i0QOKYHUerfKMsj8SOK1xHzMtZ6xCjl?=
 =?us-ascii?Q?wKZDGrR9l3FEE3IDqXC4TTeao6pVsrxE1NIb4D1kYDDLpk936RHCrZl08YT2?=
 =?us-ascii?Q?dekbXC/2dRSuHFPGNKal8r+Sl83Snwh2O8TkipCEvfEOsc+Scd/g3oz9JTNK?=
 =?us-ascii?Q?uaboE5YYVA=3D=3D?=
X-Exchange-RoutingPolicyChecked: rTbobRU0Z0P4muhhv5yOl/+WF76VcfgfvABQ4kLJ0X/uzmLACXuqZFCHriq5sEsJz1UCUKTRP0/FF8v/JYUUyL/RE+fWqWSnPG4qaeW6/zkt7dt4oB37f8vvogpgfhX1+/uys7V2mpPDW4IWUF38+8EekL95+AEyxLwdvRmL01JPX6cW43CnUXflsQakYCHQuRbtEGyGuvmlr47tNxJvsFTlhCOH0pKh78jO4QuUduZ9X20mshFYbcEG9vlulr/5OINcC5lSVr3P/AC3dhVpGTiqdRTELCeMpCIFU6LfE7h0W6AZy8YOMMYW+xxxm/9Fk4aV6sNJoYi+RC/SDpdJmA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 525b90ce-b67b-475a-cbef-08dea5255941
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:56.5077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b2pKHYQlQQzTtJj+QFKJ7lGbUnyxy01GvhTwQ+k/L55FHdOab6R+2addTS8dn15R2DmS7//X1dvDe6q+LqMsMw==
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
X-Rspamd-Queue-Id: 55E8048557B
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

Add a helper to select the link configuration iteration order for a
connector. This keeps the connector-specific ordering policy in the
link caps module and allows using the same ordering during configuration
computation and fallback.

Also add the rate/lane order key, used by SST connectors, and descending
order direction, used for maximum-configuration-first policies such as
intel_dp::use_max_params and MST.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 57 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h | 10 ++++
 2 files changed, 67 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 685fbc34b8df9..d7ffb8e8e9cf9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -170,6 +170,52 @@ struct intel_dp_link_caps {
 	struct intel_dp_link_config max_limits;
 };
 
+static enum intel_dp_link_caps_config_order_key
+order_key_for_connector(struct intel_connector *connector)
+{
+	if (connector->mst.dp)
+		return INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW;
+	else
+		return INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_RATE_LANE;
+}
+
+static enum intel_dp_link_caps_config_order_direction
+order_dir_for_connector(struct intel_connector *connector)
+{
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+
+	if (connector->mst.dp || intel_dp->use_max_params)
+		return INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_DESC;
+	else
+		return INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC;
+}
+
+/**
+ * intel_dp_link_caps_config_order_for_connector - get config iteration order
+ * @connector: connector to get the iteration order for
+ *
+ * Return the configuration ordering to use for @connector.
+ *
+ * The returned order is suitable for the configuration iterators.
+ *
+ * See also:
+ *  - @for_each_dp_link_config()
+ *  - @for_each_dp_link_config_idx()
+ *
+ * Return:
+ * Configuration ordering for @connector.
+ */
+struct intel_dp_link_caps_config_order
+intel_dp_link_caps_config_order_for_connector(struct intel_connector *connector)
+{
+	struct intel_dp_link_caps_config_order order = {
+		.key = order_key_for_connector(connector),
+		.dir = order_dir_for_connector(connector)
+	};
+
+	return order;
+}
+
 static int lookup_rate(const struct intel_dp_link_caps_config_table *table, int index)
 {
 	if (WARN_ON(index < 0 || index >= table->num_rates))
@@ -373,6 +419,9 @@ get_table_config_by_pos(const struct intel_dp_link_caps_config_table *config_tab
 	switch (config_order.dir) {
 	case INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC:
 		break;
+	case INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_DESC:
+		iter_pos = config_table->num_configs - 1 - iter_pos;
+		break;
 	default:
 		MISSING_CASE(config_order.dir);
 
@@ -384,12 +433,20 @@ get_table_config_by_pos(const struct intel_dp_link_caps_config_table *config_tab
 		*config_idx = config_table->bw_order_map[iter_pos];
 
 		break;
+	case INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_RATE_LANE:
+		*config_idx =
+			rate_lane_iter_pos_to_config_idx(iter_pos,
+							 config_table->max_lane_count);
+		break;
 	default:
 		MISSING_CASE(config_order.key);
 
 		goto out_fail;
 	}
 
+	if (*config_idx < 0)
+		goto out_fail;
+
 	to_intel_dp_link_config(config_table, *config_idx, config);
 
 	return true;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 6599325932ab6..ff737dbb7f4ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -15,6 +15,8 @@ struct intel_dp_link_config;
  * enum intel_dp_link_caps_config_order_key - key used to order configurations
  * @INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW:
  *   Order configurations by bandwidth, then by link rate.
+ * @INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_RATE_LANE:
+ *   Order configurations by link rate, then by lane count.
  * @INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_NUM:
  *   Number of ordering keys.
  *
@@ -27,6 +29,7 @@ struct intel_dp_link_config;
  */
 enum intel_dp_link_caps_config_order_key {
 	INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW,
+	INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_RATE_LANE,
 
 	INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_NUM
 };
@@ -35,6 +38,8 @@ enum intel_dp_link_caps_config_order_key {
  * enum intel_dp_link_caps_config_order_direction - iteration direction
  * @INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC:
  *   Iterate in ascending order according to the selected ordering key.
+ * @INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_DESC:
+ *   Iterate in descending order according to the selected ordering key.
  * @INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_NUM:
  *   Number of ordering directions.
  *
@@ -46,6 +51,7 @@ enum intel_dp_link_caps_config_order_key {
  */
 enum intel_dp_link_caps_config_order_direction {
 	INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_ASC,
+	INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_DESC,
 
 	INTEL_DP_LINK_CAPS_CONFIG_ORDER_DIR_NUM
 };
@@ -62,6 +68,7 @@ enum intel_dp_link_caps_config_order_direction {
  * Describes an iteration order for link configurations.
  *
  * See also:
+ *  - intel_dp_link_caps_config_order_for_connector()
  *  - intel_dp_link_caps_get_config_by_pos()
  */
 struct intel_dp_link_caps_config_order {
@@ -89,6 +96,9 @@ enum intel_dp_link_caps_config_match_type {
 	INTEL_DP_LINK_CAPS_CONFIG_MATCH_FUZZY_RATE,
 };
 
+struct intel_dp_link_caps_config_order
+intel_dp_link_caps_config_order_for_connector(struct intel_connector *connector);
+
 int intel_dp_link_caps_common_rate(struct intel_dp_link_caps *link_caps, int index);
 int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_link_caps_max_common_rate(struct intel_dp_link_caps *link_caps);
-- 
2.49.1

