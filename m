Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHyfJRWu8GnrXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 417704853E5
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C18510EC17;
	Tue, 28 Apr 2026 12:54:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bSlbpxoA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BB0C10EC17;
 Tue, 28 Apr 2026 12:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380865; x=1808916865;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=mc2E1uRlVGvnYyvq/7nA74mFClpInuN+HTOhPW3S4Fs=;
 b=bSlbpxoAJNPwB5J21mAxyqipNgxG4YyS+IX4H7qnfnOpZdM6pnpKy59Q
 yNQMXwqs4uBYEF/DwLjYU9iotAcDp9Txf50j7CGJdE4Fnn/nXcDU4ONcg
 mzqt8LQGjmMzrpDp9fyRxcp5mu0Oui0XtzKAgKxShoXX4/giacm2tRwOK
 0ctvH4jVb3khWG5s9PgGTa6xd37mvEhfppH2pyA0xIdHslcbrH5VnFAvi
 W+BNo9O5wN8iYfWMe86qT8xJiw4xFt7rnu43xrdnOBYdviAbiCH9U60Td
 NnEywkh2I+cWdIzZwRnw0o0rpDAG85XPMUnrdWOfCit+SUt4pJjuEZwUL g==;
X-CSE-ConnectionGUID: IYfnVKJiSXmKlJU6vRWWHg==
X-CSE-MsgGUID: oqcKjEe+TA2jsO3ujTSk1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78203196"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78203196"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:24 -0700
X-CSE-ConnectionGUID: b3BYZMiER/+CLi73MdS6wA==
X-CSE-MsgGUID: S+/k/FY0RbGb9Tn05P9JjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="234244382"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:24 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.20)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AjBMFO/XtErU3j2hTU4h6uTpqTtUfbFRyIGcSPbW5zKV4QYK8nthGRv429Bdyldp27k0j6jtHaXd3lqPlGTjBwDg0upeOk3nsLWvnh5Uw2NWDSIblVGKd55mxFNcf96L3kRCnGd7FBLBeUo27gj3IkeRLnY+jVlVE1SyPzsK5uKhjEyrFb/ili4bU9fAdvZZa4Kd6/gaBA2wz7SBkk5JBDAlzFzMqunuaoIeEA9TcjlmW7o/+2LYdp0xKZcbZ4l2hIDZ1ZKDr0HkS9NtekYi5mx0xAUQYiRPXftbeFVYnOVFKSDIaSs58tqQaH+zZsua6l76sZ5H8JtQFG69R8RkuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IlTGX3w1XqtDjF7woQ5MUO6n47l6k/ByDy0ItdQeBYc=;
 b=VXdg5CcaeNPNP+v0JDo1Oww9oq+Ap1jl7OsaIvG9PV2J8kPEqjckBl3k9nVFXi9JRLKQaF+SyfCM07ZBN8tDZV69j+KnGxZspowO9WJCA820YCdkIWisi23d9iy56wiLvpcod4VmxMU0GB0QC3MZFd+dsjfzPpv0PfP99faMuJmGHd9CIXToNkBW1RrRmy+i5pnWU1d1JeJ3eY/yRyAen3vPw71jIt2RU/do9uiP7YMBSoIeuZan+jDSiMuosITFzzzsUom1KVpqQBnSlBX9nzxoc8jgJkDPFzhWr1bfqBc/H7vNoG1mf809jzfLPAK8qXg6G84OkeTeoO+L9RqKnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:54:19 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:19 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 043/108] drm/i915/dp_link_caps: Add helper to get common rate
 index
Date: Tue, 28 Apr 2026 15:51:24 +0300
Message-ID: <20260428125233.1664668-44-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 6796dbed-ac7e-4fa9-2d32-08dea5253286
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: lidCk37HpuYPuDEvcM8zqQEt7Ytm469iPJRG0KiTrSOqSFmtB2Mord1oBPtmimCWUOdzPC+QTF4eOFRu5g3zZbHJaYR7hFmzyHXEIoEzsCONaKSA+y1qXm/I7RPhoDvKEGM0U3gFmoSTapvvKZ3qIESWCFLL0+2oHPel3Gewi0rVrBnbtwm20VB23w5WghLXSggRUZUyQnlVjHR9+5Z3Joc2wwesPS3sdb3DmxYezMhIY9ZTYPezqdRcWeupu7OOSbS00+A3Sp0Jhec6UuNTf+HwGj0kedj4VAhUfXzEHWbyMmf/c7VdIF5QDa/sinWX6J3T4bKk5ffYyjyoXDVQ385pQMiCOPtE9rpmr3up7XeEhe+oV1ywJ6GhEXd1LS0WNAWUUv8XcaTNsYUlFdiDBsh3DNpU75HsXP6bYqKSCJ0yx+6OI8lXRPtkLxDkwWkIAapqGpTgsKxWYBBjw2X8jgLqgzt548gP62+hwjykGK4FvnFeWRQxFHQ3BA5MktHXVCGwBfJHOPb0MfR1VIFY2vybFbpYQgFr2CkMEBSKjWGZYwyiie2sx6XgHUuw8KN1JGDHJr3TWhyExLBTmP+e6AL35TZAJ6bj75a+vh3zCy4bcrq7IdSi3PbKW9Sv1EjnykZqJmTeBXxgFKYC/uy0GuINpZLUiXvBQWSEE16WG1cxDtHf/xrWa2gGQWKhiL5GXAQrMfWs8pSvEb0NBZOwhzz2jr80OVUiBR27lRYehIA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NCRwUJFykRgvCrboK2Bpo/uvbib5WVKYSAiVQEjHSicsbM4N7oqIWhHMjhu6?=
 =?us-ascii?Q?AUgAIL9V081morjMyEvUxaeWn353o+e4q8tdgn9Sp6eNbdm7P6HMfzeYfH6F?=
 =?us-ascii?Q?zvE/A44Q/z6rE51J/tEaXj2rD36DuMGLidyEaMzBO3roxTZkOGFvfLKPSAom?=
 =?us-ascii?Q?RNqQAopQ6OxqnRTGC3Mm1r/zt9jDaBhzE2zd4ioQHxHGi75TH6uS/rR1Ao1C?=
 =?us-ascii?Q?ZM/Y1qgGszfy8IGDqnA7DkRPzNYskfe9JdO/YlVIGbYbTq3ANR8t4bmJ5O7T?=
 =?us-ascii?Q?yQtm8gDSMCTcyvSH+N5ysgdL4PpywTOWdemY92i2rlFKJ10AAjoLpAcKwCAf?=
 =?us-ascii?Q?pK9Oxej5cOc3r3tyGm2fJICs2zvCEYVQQnmzLZhppP67+aCkhenbhzp3k7Vw?=
 =?us-ascii?Q?hiGvnlZBvwur5qUNi6t2OI8YerMFwfDsEYl84pNASaeV0GTj3TpZZ/PiVSsb?=
 =?us-ascii?Q?ewEI1Nt/8NEElsW6mRPJ5ZJWAkyzNfQxYAyokZrPacK0MZvlpNzOezARs1cK?=
 =?us-ascii?Q?WPh2M6Q70Qfyc8Q7K0xLpzfW9I0/rWZ6OhmWwoRPqU9ACcdG6O9YDgw+IOll?=
 =?us-ascii?Q?A7XyXtj0x0Rub+GMXmYrvGRju3M2FfXc1FwNOWv634V8dmhDxsvHly95sOMk?=
 =?us-ascii?Q?FEDc3M6qgEzeGWYTYbNvxKj0EiVLHIxmDqZUwlYIOL3PyP/pyxCze1sLllT0?=
 =?us-ascii?Q?TtO0B8pVppEW1gW9CNrqVaMVFMp/yeOBdccNW1hNMadgLwUCFSSNOnoH5eQ8?=
 =?us-ascii?Q?xLLAGoDnsYrWylr4XltduftRReFDjzHqD66Ixb0Q6d4i0o+HNcC7H3IvraQE?=
 =?us-ascii?Q?PplelcShsIwZDKFMXCu06TOzSjhcfKYzYOoyIRRNeEDYr5nCEoHZcaHKPJ0t?=
 =?us-ascii?Q?rSN7kQCC6i5n2XozvApCcn+rSf6NQQVR1QdvH75IgTLQ2cMPZxYi5bX4S1GV?=
 =?us-ascii?Q?8gQ5OydK43weko/fQ/10du2XGTwxaGw36fN7rlVVXdJc5JjT8oNwpLL3K3oy?=
 =?us-ascii?Q?SpJSAqNh3kJk40JUqy+QJSQCitSDtIAsfOmoO5NHcZ3Bl5VO5AO/0t4ooyG2?=
 =?us-ascii?Q?R8eUqz2esx8KgdBS66oVHSvhl9SntBN12rX4c6q9BzQzNN+5cvTJ+rQrK47b?=
 =?us-ascii?Q?3OC9yJd3uaO0J6Olk/siI1KCb+2PCQjWcibRFE6AqLE41NoIRwH6pUnXaZ4Q?=
 =?us-ascii?Q?nBQAKmLAUE3sczOMi4fc1s+XQOHkL7GP/iMqnB07/PFSxiGxSH+heUZWoSgd?=
 =?us-ascii?Q?05+iZHLtlUUGATl+qD4p5YoNbX2bH2x/KP77tVNgtePlahblzDNb528uOmSc?=
 =?us-ascii?Q?+25CHS97wUCFF+IVQn1c+mQ0Gc35TEkC9zAkKzIbG/kJZcA5VDB65IewGLwO?=
 =?us-ascii?Q?oCU3yICC+nG3dCuJtPJ2qGnllmHeIRn0jpukplRszpaBSstBMp+nLwXMPNe8?=
 =?us-ascii?Q?ZtopPUk/XEPlF1NORt7umPO1TlPZMAnmceuWRS1086dJZG9MjaOaxmkzUBh8?=
 =?us-ascii?Q?0oQ+ruOvYc9UYObqVeBAAlvKl1NY3bcjAEdnCt5Y1LT6Zi2ETmTSTfqMQRHr?=
 =?us-ascii?Q?uXxWfJfW39Qwji0ybluEWx+ZX53QhNJp5wNakPCpNfs0RdhE9IHNL109l+Hr?=
 =?us-ascii?Q?SB8/FOowYZuOFC7iGyYQ6M3Yq2nz0VUGXFns0bw16dWLlWBTjyT2C9A5nHgf?=
 =?us-ascii?Q?jrDapG9Ch2rJWwYUh+BW/fk/uY3lDS5yAt0hCw56hQzTa+52jI5enCzniRTG?=
 =?us-ascii?Q?cNVCbqJy1A=3D=3D?=
X-Exchange-RoutingPolicyChecked: NbFlYRNb7ExdS7zXYFL86cmlQWVmboxNFGoll0t1aMwVkwk3l0cbRIu84g1fYG9vAsT3E3TQEqhjgIQOZByoSbKufMdXXvepP3zwDZbThFCNCFdqJh9t7E8k1vDMAIEWPFKXLQKDeRxUR+4AqlGN6+kTI1P72HkXPPOVlFGqhpJKfr3zIjJO0NQs0wa186/2gwzH24IYn21nLji4ylgLj2uOtAoG3fhY6GwqvqVrCSjBEPQJ93Se6JVJLbQNCOLpWAIa1TNNaWgMF4rIcl4QifOKNZX4K8SMpuQcK8DfJKaBx00sqhhWRMHuOTNt3R0EQxGwvc0Z9gpGJ8iw0ujP5A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6796dbed-ac7e-4fa9-2d32-08dea5253286
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:51.5057 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H6XHA9Filzrvi79ROZWz34F79EGembWhX7rlJfvc2LlQIKrNLPBeSlgCDtLgJzqPWxRfbig7iZxZD4fQB9LbyQ==
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
X-Rspamd-Queue-Id: 417704853E5
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Add intel_dp_link_caps_common_rate_idx() to look up supported link rates
tracked by the link_caps module by rate. This prepares for tracking these
capabilities internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 25 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  1 +
 .../drm/i915/display/intel_dp_link_training.c |  5 ++--
 drivers/gpu/drm/i915/display/intel_dp_test.c  |  7 +++---
 4 files changed, 32 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index b1b78e7cda897..c99fc7704b3e8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -60,6 +60,31 @@ int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
 	return intel_dp->common_rates[index];
 }
 
+/**
+ * intel_dp_link_caps_common_rate_idx - get index of a common link rate
+ * @link_caps: link capabilities state
+ * @rate: common link rate to look up
+ *
+ * Look up @rate in the rate list currently supported by @link_caps, common to
+ * both the source and the sink.
+ *
+ * The returned value is an index into the common rate list returned by
+ * intel_dp_link_caps_all_common_rates() and accepted by
+ * intel_dp_link_caps_common_rate().
+ *
+ * Return:
+ * - Index of @rate in the current common rate list.
+ * - %-1 if @rate is not present.
+ */
+int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+
+	return intel_dp_rate_index(intel_dp->common_rates,
+				   intel_dp->num_common_rates,
+				   rate);
+}
+
 /* Theoretical max between source and sink */
 int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index b2eb61272652e..7ec1612a044ed 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -14,6 +14,7 @@ struct intel_dp_link_config;
 int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
 				   int max_rate);
 int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
+int intel_dp_link_caps_common_rate_idx(struct intel_dp_link_caps *link_caps, int rate);
 int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 int intel_dp_link_caps_num_common_rates(struct intel_dp_link_caps *link_caps);
 void intel_dp_link_caps_all_common_rates(struct intel_dp_link_caps *link_caps,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 5218220b82b0b..456540925db55 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1805,9 +1805,8 @@ static int reduce_link_rate(struct intel_dp *intel_dp, int current_rate)
 	if (forced_params.rate)
 		return -1;
 
-	rate_index = intel_dp_rate_index(intel_dp->common_rates,
-					 intel_dp->num_common_rates,
-					 current_rate);
+	rate_index = intel_dp_link_caps_common_rate_idx(link_caps,
+							current_rate);
 
 	if (rate_index <= 0)
 		return -1;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_test.c b/drivers/gpu/drm/i915/display/intel_dp_test.c
index 5cfa1dd411dab..0b791eee3b910 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_test.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_test.c
@@ -14,6 +14,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_test.h"
@@ -32,6 +33,7 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 				  struct intel_crtc_state *pipe_config,
 				  struct link_config_limits *limits)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	/* For DP Compliance we override the computed bpp for the pipe */
@@ -54,9 +56,8 @@ void intel_dp_test_compute_config(struct intel_dp *intel_dp,
 		 */
 		if (intel_dp_link_params_valid(intel_dp, intel_dp->compliance.test_link_rate,
 					       intel_dp->compliance.test_lane_count)) {
-			index = intel_dp_rate_index(intel_dp->common_rates,
-						    intel_dp->num_common_rates,
-						    intel_dp->compliance.test_link_rate);
+			index = intel_dp_link_caps_common_rate_idx(link_caps,
+								   intel_dp->compliance.test_link_rate);
 			if (index >= 0) {
 				limits->min_rate = intel_dp->compliance.test_link_rate;
 				limits->max_rate = intel_dp->compliance.test_link_rate;
-- 
2.49.1

