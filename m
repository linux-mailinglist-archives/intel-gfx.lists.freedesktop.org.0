Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOOCCrWt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91272485219
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EABED10EB81;
	Tue, 28 Apr 2026 12:53:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hDElHlpa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 803CB10EB8B;
 Tue, 28 Apr 2026 12:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380785; x=1808916785;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=qVjx76oqxNGUfxXgXhlWY4oVtF5pSK7PE2fnFTIzbs4=;
 b=hDElHlpaHLhIwEx4cUY6uiMc/5Ai9XNVVPQQA9P019D8aJpwMIukwdgK
 0hQlUYV1Ku2BTu8t+5oSqCzjQKpRxaqHr92z4XRf4s0vSR3y71ifH+DQ5
 4A/PwHOn1JMzgZ4PV7IrvRD0xygrMw/Lp4EgKvAMmG6r4ih5f/FfVtzgG
 7SW0TYpojhH1Srr/KTfNUimU6IEsv+94iL2pUMCB2WNQA78Im8ArAaHpV
 NF/MPibJk7oPS3ANTenDkueW5m5a6DGazNGn0Abmm32w53V7/KRBO80so
 dedB++nFZ6u/jCwNplTC62UIRdYa9qu+XdckfUEfJ5bOV78SkemkWyPX0 A==;
X-CSE-ConnectionGUID: T0+GmC1rS72IFW3MrTmlzA==
X-CSE-MsgGUID: 6ypKtOBASIOMwbgzTU9zzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398575"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398575"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:04 -0700
X-CSE-ConnectionGUID: nJV8JW82Srm+UIEZnHzfLQ==
X-CSE-MsgGUID: laMWpom1Tja+wlRjwkEF1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911291"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:04 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:03 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:03 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.43) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U1WqDGXb75uZZQ1rdZOBkBWGYWbMVcLhlXw2VHRQEEJde0HiHzNATpDQLi23sF7lReONtyWYsHUjgsQE1yNo2f5nPXzKFqbioOcZJP5MJusUmV56Q2cispF51AOdmj6Cj9D25DtxiLwpNwFDnbXVvu5oyfFwCBcKUvzMMbZfZONLCXZHD3vRGoUywT7F33s3oJvtTLN77RaXqUC/SE4+YFLckjJfldr2JYemiOucWG93qE6GEfF70DQAUUgu1De8LzW/FvLI2R8BCEN8yfC1QV77VRZ1dq06I1sUbye8JBakwQcD2ho5pagYfR9kv66I3t1ZuHaa1/FMYvfbTqcRrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AshSsYUhZzs2UOs3/KEcHsyZoJlHHNcWKo325WWiBrI=;
 b=eWNTxft+YjCbYIvIZpX8lFprC0wglwE/PWaEG1DtV3ILd95KOUlQYr42SoD9D/z5IyfVgnNQGW8dRfMGmpDGcGW2Wnhg8SN2KlB7OpO0SDORspmF33LnVYqNSr6YTqWu2ow8OGyC82BNkDldmk/Yi4N4UZJ2mcz9J6mmPY7uPQnMt97Lmt2ZxdL1K+SGwl7kMJam8kb3bowxuFTn87twBB5SVH8H1rTPgUe3yveuObNvhRF1tI78lm5y5jgCdVlt2oOtOtX2wUu/S180eOEbCilgKJTmT++iihU6ccSN7bgRxYBXlyYKRlg/dIaiHHO0ZHVG9OqJ4QivldQ2F3II/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:53:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:00 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 012/108] drm/i915/dp_link_training: Prevent repeated
 autoretrain attempts
Date: Tue, 28 Apr 2026 15:50:53 +0300
Message-ID: <20260428125233.1664668-13-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 9bcce6ee-7e7b-419a-5b23-08dea5251407
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: S1PgfMzA5FQsFxDcJZA2FcGmdFejpTaC+3fS2VRVQjap3ppIu2zBUr7uYG3+RFXf/3PcpScy0NFAlK3+rrhM0/bwa/Ve7e9jLBhnd6hNTG+26slvQHn2eIC3Ej/ROs28GPkjEeCuGyc9NlIzZRelU5/sSRENE63n/lvZQ1uiPPIMzQFU4aicm0fSjfgV2SX6SuAgrWci4sQ5rOIpWFmfLB1r0gnA0Be7uMnopQjhFeJTN3lXA12aA0YtCglm5l89L0W+btp16u+9ogFSddzOzdSbix8nub47T2cukz8vDAbxquN+9K7YMjq+Sdd1ikP+SzLgi1H3n7Rm6fzinQfoRuc1tYVNd0ZFwiAwY7G3wel0JdIX4gUlwWmx9Dc6JcYxCAuTSgq4s9qBTZ4X3ZbtI40OFgVEjhyD4p7os8gvMMWt+HLcNtC113hvy52YTNqGa34do1xu+k8Y6RXOqoa09q05No/D9QOTBW03g+brdUQa/vfOeKR9USETUZVjmdEUOt/6pF5MLU16NdZEmOSjG8NtpzREhzYmES31A+5OrJsilKiVQoF9utoTOYaJFOO3tqdvkYJDDo5K9PGU5fg/XKKfkajyQXlqliKv1E/UVC1nqemaY8NuWZZgh8PLTmQu4Qy6FpZ+5kXBSuLGAA4kIyNSP+b2PTn0Yp34AxPUUPUAkAZN4/HL8tL0CobG0mtofwtAG7/ycfCDk7w8BdGclKB9OZHIeMFBiZyjMTo3Frg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zl87WuVZwI2wSxPxsqCmevmRfBze6C6/05x22hErxiXtoVDtPXFmECuK0bxl?=
 =?us-ascii?Q?hh39+Uppq1YZNQE0vvZDWAmWuyQM602i4DFWp0vAtkKzQFcL2Qx5eqcALyB0?=
 =?us-ascii?Q?FAqCEBQQDGxo9rbuGdh4ICpSezNdfCFPuoD60VB8QeHcCNBqNlrzcGepetET?=
 =?us-ascii?Q?W9b2XoyysozwqhBLFCeuHCayEMtCJXIZdsPwESQFck7cl92uc5WwTdfKMFcX?=
 =?us-ascii?Q?KVym+b5BrQRNDpjAu7EnfCcw+4JqQ9gWRlfmlIJW/ZN/wqZeD9Tfl0FsdlHD?=
 =?us-ascii?Q?usN7FK76EcjzqHtR5/r3Kgi5RAe1XNn1JR6YzaxM8rRStqGIrVLL3iClD0Yg?=
 =?us-ascii?Q?7B2mnHNlcGIYk8fnR9LH34ypg+HsdlSg6LIdWFWO7Ocna1iQAqS04oUJtwdi?=
 =?us-ascii?Q?Bds1x1rGRWeJKbkGk+kKeiqjCiq+nGn2g7yRhoeHia+O7aicN2SWvsOAQO01?=
 =?us-ascii?Q?Oc734i8Rqr3eRshSe7nRj87iQOWLhcnbsgA5uWXRCWGeEp0xgLIep0cIQHZK?=
 =?us-ascii?Q?4wDnA0hVmSmr7fTeJfXYYVPIOejZeJGGTMyPgQXfKPNZsOzZvQWiWBl3B1NL?=
 =?us-ascii?Q?vf9XiEkAbI03oZVj6fm1yQG/vA6BvXMk7268eY5VkQXeCBWnAR0SQG9+fpbp?=
 =?us-ascii?Q?QqPkZLq4PsuKQHLits50Cs4z3gq0U5derl7hIa08ASc2xyrLgUogav8++rgs?=
 =?us-ascii?Q?6jprgBHKxktquozI/qV4oZ3hviieCCGM1EVm3NpthUsqtaCP5P1/frtvuzMg?=
 =?us-ascii?Q?qR5N11yekII4B1fYEAVaPeivgT9AE8vlk/aYdVEpHH/yP4JMyDJFUVPMtTW1?=
 =?us-ascii?Q?SyLL6fYZPvXYFxv3ck0hyWjyZ958Q0JlTfe7bzmlIXCQfN2ci9ev1qrMYhye?=
 =?us-ascii?Q?W1n/GUAS7rpsNurNR3PvEA9jaMt95M1gUMNxw/rETTakwkqMsW8FsdV4kAGU?=
 =?us-ascii?Q?CyBhiKcEfJLjtGaEKyLOxPFEURPKtefDaiWFDcPqmCTLXZoCvSUuUw72Ukqx?=
 =?us-ascii?Q?48cxRdgYqNEPT2gHFgMP2VREKTnFhuc203Zye6lZN4XS3nPZv9UnJw5UCsYC?=
 =?us-ascii?Q?v8aFi3tOnsCx5oRshRCnAQrhgOXFS9+LgDYy22/i0DLETbTV7X/mDqz2LmjP?=
 =?us-ascii?Q?CW+n+QQMniJq/Dq0Cq4gXwM6eZadiFuqBbt0ebRr8LCiXVwaZJFUuVhhdA1/?=
 =?us-ascii?Q?5Ir5jJ3N7VbAipufI6PcpilsKePc0m6lYDnQJO9X0JNnT6MIF+yrD8VgDPVZ?=
 =?us-ascii?Q?Br6vBYNu0fofL7VMDCdM7UqJDWe2UM4ek/vCiMrHIVx9kmWMPtEkqHV37MLE?=
 =?us-ascii?Q?XAP+WlV/JIy8B/HVtDP0BB7riWqVcsSKPr8khlUDjL1rX0suB0onmkiAjVpK?=
 =?us-ascii?Q?NB5pnghbk4HjTS2xgDD2iBLsor/WZ8dTixWmIz08OT6uvNvxjOh6QZN75+cV?=
 =?us-ascii?Q?MjK+fENfoc05te+UV/Kctag569OxT5/zsd03aBRf1hN2rN7JMV8IaeDmR/1g?=
 =?us-ascii?Q?n2CCoXeIn8Bb4Mr2mDYuVmsvuTFUrcaqrZER5onkPkrwSl2QfnTlCYFHFGAm?=
 =?us-ascii?Q?F6IiGUWgrks9Y4IGp6eR6OO8UFZDVhDJ4odEyOZjvBI48ch4YmlYLSlYe8x7?=
 =?us-ascii?Q?JqUC6F9idcVXcJyYVdU/tf9nRkpkAqReXu6pXPmg6CXCJ6iTagSSN09JZJZe?=
 =?us-ascii?Q?3iy2tztk2AnoqqR64qcxIkhZYnyXlWO64UQ+aETH4Oey2T12rGiwRCjQMafI?=
 =?us-ascii?Q?+QbGP66evg=3D=3D?=
X-Exchange-RoutingPolicyChecked: Bd1yCLw+rSktmHWC4BK6XpWp7g/DIpJtpLAOlIH+UyUBsFw/zvWPKKByd8k07C7pFTdEL6ofuIpgenHKEGQjYRYK72wv/4wtL/wkrjfy00yQN359uP1ZW9lxwIpYW8JUdNRrN6ak2X5ZX9iu5AE2s/fhEMWPfVLBudR7hjMdZVk+pKUvN13N6TkrtvSypuRIGCKaCMshggdqFcEGfH19KP3BPTR88aRjSwhvu6q8tGZgQ+/70k2a2eAfr+t7FAnnBBeDxWG/6Rde55s+K+E2ka88elq8D2CU95eDyRRTdz2G95L9Wzjgzx9bOPRyDeaxwYmG0tC7F9YGQmSw017sdw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bcce6ee-7e7b-419a-5b23-08dea5251407
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:00.4124 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6GMEazooCWfm2+vQ/pPcZWxgZLXiqiIVI9SdSwy7588QzITLk3ELcbuM1gAMKPaZf2bt4nP5xeOiXBIl9jodfA==
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
X-Rspamd-Queue-Id: 91272485219
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

After a regular modeset link training failure, the driver attempts to
recover the link via an autoretrain using the same link parameters as
the modeset.

If the autoretrain fails as well, the set of allowed link configurations
is reduced via a fallback mechanism. For further link training, the
modeset parameters will likely need to change. This lowers the required
link bandwidth and allows selecting a link configuration from the
fallback-reduced set. Only userspace can perform such a modeset change.
Therefore, the driver notifies userspace to take over link recovery.

Userspace is expected to continue with the recovery attempt via a
modeset with updated parameters. The driver must not interfere with
these modesets.

link_training->seq_train_failures is set to MAX_SEQ_TRAIN_FAILURES after
the autoretrain fails. If a fallback selection also fails after this,
as no link configurations remain, retrain_disabled is set as well.

retrain_disabled is therefore somewhat misnamed: it indicates that no
fallback is available, not that autoretraining is disabled. This will be
addressed in a follow-up change by renaming the flag. For now, prevent
further autoretrain attempts based on the correct condition:
seq_train_failures == MAX_SEQ_TRAIN_FAILURES.

This also prepares for replacing the counter with an enum in a follow-up
change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index db1e03c15596d..54f506bbd6d1d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1987,7 +1987,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 					intel_dp->lane_count))
 		return false;
 
-	if (link_training->retrain_disabled)
+	if (link_training->seq_train_failures >= MAX_SEQ_TRAIN_FAILURES)
 		return false;
 
 	if (link_training->seq_train_failures)
-- 
2.49.1

