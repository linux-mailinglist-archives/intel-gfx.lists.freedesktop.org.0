Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qMs7D0mu8GkgXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B780A4855C3
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3463510ECB5;
	Tue, 28 Apr 2026 12:55:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qy7XJRRq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D128310ECA9;
 Tue, 28 Apr 2026 12:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380929; x=1808916929;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=cc4b/zs1nPxOTHFyOWtRB4XcDVu6o07e2qsHWxmGJ5A=;
 b=Qy7XJRRqPMrOS2GfeM9TjanxEt7xsw/MU054fUEWgO51eoJ3tnoJJ7Dg
 SJINnGnMbokrSqvmUyG/BOXZFC6S6EfEBGu2BpEkgMRtwvceTXafYM2ln
 n/sL5INEeyTEvj940r2xo3y4d5X312vskVLr3KOz/4Hay0ugx2RKlLObX
 LIbMdkK3GPC3QFCDukXXxZrQbqExya2ekvRRWYAsLzGWoxEPsyhbY7LEm
 SL4PHISR0qMEFA02ah8gXLGjPJ2dkeDY20QKsliiJnQuAvGX72GTPllFf
 pmFLw78lyptg45cahH1+1JIs2/3JLktDYpotpdxmTOC9ek+z1aFLPt6kq g==;
X-CSE-ConnectionGUID: g1TvN/kVRsGmz8djrkQIRA==
X-CSE-MsgGUID: hfXYLNFmTI26a585p5sCWA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318785"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318785"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:28 -0700
X-CSE-ConnectionGUID: tGjo4RVoT9OrKxisy99azw==
X-CSE-MsgGUID: 3xSLHfH6TfeZn5gwY8bQyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818252"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:28 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:27 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:27 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DZxI/hJtnDRUEIApLbp1/Mj4wb3piDf+x/b98ZfuI+rOSMwjqXSB92XrPCeA8kSXhaFd2ETl+3ULjHVOoyD3GmAOTCjcWfvGSz4ECcnzOPtn1gjogLgPuzQ+qqU280Fpt5Y1NRZtcrD9RuLZFDjB0GXhWbLQCi/JauM6tTD8QfYD4R+fMyMdlzLnxEnk/2qx5fjp+Esp0mg3vFTNPKWbCVCHys29f0utn3Yxcg6z6BGiBFS62H0fMTYRjd+spBM87Xp37HhZgl/j5tXehvSCcUGMm+s0w4l15IpyXEB+1pGbdcCEwDjs546n/VWopZCM9qCceW37bHoJsHUebD/dHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DaGCLNwjYCLIhbqz8siA0w32+OjmqqMl5vOSXlz6gSo=;
 b=iLunsbGn2dYEepKNHjRXkMHWM422shWdPDxjFwwDrFK5L5mhAqLVRQq6I9fXv5aaxbx6y7TYM8Vc9FL7TDVfzH39rIbRF2vn6EEy2U28cxjrYl3T/hWHR5+xTw4AmE1DE+WuLmYXylXg1V96Hhcc6K2v0gj8YTyxW+icQRPrPhMOG0wpD4sZa9LMey8uZ7Ud0dF6oXpDAFE/b3YgizaXAWQbrPNj8deoL4xHOLG+kNu4MLKQNTmJXWgdP9lG0+Tl1SwSIyE3f0d2rveR15k8hmg4uDQUZm9vQDiGvZ8Lu3vds2lezFRx/ZxgeCvCeglzjtAxvjNoUXckJqgWvvSKVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:24 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:24 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 095/108] drm/i915/dp_mst: Use link caps for MST DSC config
 selection
Date: Tue, 28 Apr 2026 15:52:16 +0300
Message-ID: <20260428125233.1664668-96-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 33d287f5-6d35-4656-f2db-08dea5256505
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: +6aPFQk2aPdHB8rxbZJrfxtQsjifhNo5PUq+7dOQB0+aOzsGEOZxN3E4y5qzRKti1Fz/vYH3rK4Kzk3umxwXOWEnLGRVoLgfLqH54Bq5n9MhySmAfEtzAY/3VdoK5W6ysI130/XF4rvu8Qm9L1qKN8micbGvTeP3JR/SB7A0lNRjNPbHN+mpYwqMidHyUoltlACxSbpG5Uc8KECqCcLm6RgJT5ASKTlCm4AxDCWnBnQalDGdxHRznqEl2x4uZmL2pLS1TkbvaOjiXq7AiQ/k0Xz66m5DC7TSe2HgOW6Ds8XkmfoF+7oviFpqFr68nZyFupgBpeMNLniRXd7i9v1FBNOs7OsP28eFq3Oh6dle4T5BLRc0+BHYSki1zvG9lgmK7FlnIm/Rd52SvyE9/ZxSYopO3DL6vGVDfnlKkHUG3v3v0mZ5+a+fl407gZSrWPORieuXw0dHEqxIVUxSJ8kuikq1sonmxEmekkdRqecL6vyUc3V2gXIlkE8eCQ1NtSf2LkwXxuOPrmLE9H+Yvf98XEMW25CZQpx6vdB5uUxFp+JFJt2mHxcapzQPzYQX/ucqqjWRKwRkmRyWZK2KCY8v80cf/4qv7d8dDLEfDf92M3Hb6fFg/C8HsCy+xSFGRjODOz7bkwySJArVw63Ei6Y7Wr4/292AyVdQ4QpFYhfdgB1uSysAIyaCiUdjOU91PZpjUq/T1zMgpvHmrl4xbrShTtSoX5oui5aFSpeW3YspmTE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VPe4ZzmjrtEC6Pvh5udiMpVm5QFqs0gxmODidOgYyQOwMqIR4fre7no0CwX2?=
 =?us-ascii?Q?FCCnnsgg/BkZ8Yuxg6lUHM6WU/M0YwmlobiAm5nPlIQlTQIr+qYt16rgs6VV?=
 =?us-ascii?Q?Q7AOBaUCLBRhg8lWWElRCIRzPQyI04khcZYPe8ZxSCRfYk6R3a/dFvfTC544?=
 =?us-ascii?Q?Ix8eXaZKAJckdgarbXpQ5/5fEA3xqz65I6hUusgXLBA9pO8DPpbjQdX8WBfy?=
 =?us-ascii?Q?EAZSWf5VnuCoyk7SZsO1V98TaZVoZ3G2KqO9w3/Ac6nfGYpdxEZxssObaFqS?=
 =?us-ascii?Q?TUhZQFC+tcqgUnhDl3sYISCMmZsIISb9PxCjOGtb66buCNCFssPsMWxFhvsy?=
 =?us-ascii?Q?zYGrjHiBfmqmR8HeYGOSC03ydDpmO/1qfeBHJ+vMaAEw89mwqvePxwntQExQ?=
 =?us-ascii?Q?Y82wFhwhkNMmO27eDQAHWtf4j5Dt+EI5vK6miKlqLOrQ1p6U7Cs3spQgfmjw?=
 =?us-ascii?Q?sFipE/uy2ywQljR3K1sBlbIrzxKTKl0Ue8X3FDixPwPfl7wtHxIuo+FP1+Vu?=
 =?us-ascii?Q?jVXAdDCokA1xecy6FRkZ77nc5wekLhYcr9T95omTtUUlDflvcL7t+buNe4LX?=
 =?us-ascii?Q?Y6qahNCpcfB5WbAA7JY5gabOfQFCvAVCcKJqkvisnlAurYqFX42J8NpQLMCT?=
 =?us-ascii?Q?pqaObC4/q1bf+yv1luxB9p8nCW/1ysCfC4A3xDgbXqdzCQ3hdI8U3mZAGH4g?=
 =?us-ascii?Q?kAzCOz2LaUzjLdSXUey9vIsw0XAUWczLupW0bK3Kq9cQJBaY7wLvVwRFiuDQ?=
 =?us-ascii?Q?PmcUK+ERFP3Q8jJPAlBV0HWEr0cBqFXleop1ceJHWGbXXQ8ZOPrw8RMJ8Izy?=
 =?us-ascii?Q?LZ+ijjDJyt95BmqmlG/asBjdHKyy2oDhBW2cFEoprSKe++KCmRgCzxYIfPZM?=
 =?us-ascii?Q?er8aOOUDW/4x08JHFfUb4vrsJnoXPMlX/YW/ownvVzRE3Dxx5yncpIrPZWcq?=
 =?us-ascii?Q?0Zry1u4tx2AJUWZUh8hn/NLcTkgcoaThuShSqrUL6NphnvS8NUHGYfNfHQ4s?=
 =?us-ascii?Q?s3v2okUFDPdF5sPap69uZCgpDWbBBfnsov9NwEC/4riOAFz3S9ODD7vev0es?=
 =?us-ascii?Q?d5pPT95K/pbwQNxzdzhZ+z9jA0bU5BXNz9RlRaw+cCgHv7ihMkqP6locoPJH?=
 =?us-ascii?Q?g9vIKcnjjAX7OElTlNb2atwjNcv4T4knrKxjv1K+Zj8iFXhNSIfWAcpjLWhA?=
 =?us-ascii?Q?SzgpTOC2gVXVltsxw/5aW9/Gs7AM19Za5PpfMxpb0+7e+BOm1nGvmFSHYpqE?=
 =?us-ascii?Q?i9zg9Nv9f8BNLCmwf0DQqb6/woZOdl8VHB/ICkCOQrMuYc/nnYce9r9L4crg?=
 =?us-ascii?Q?fIZzcVjBy6DqhDECU55wqsAdNE3dNMkIN6bPqWoIHKZzOhh5O7kuhzG3r7WD?=
 =?us-ascii?Q?pkBIYIK5mykBO9KFQLpXufhx1DHU8rYL6AGjSaiD0O2KCB6yLZ14SpLmTK0g?=
 =?us-ascii?Q?6bnKv9iqZyr/I/0Jqfns5KS8JBhfBcY6WRzpCwTc9WQXMxyhMCah5MsUrYh1?=
 =?us-ascii?Q?uMqVJepmVFZdOWqRSKRhm0dyyeKq5rMbvo+DYJsFUk2o2KtXtxvNHxXcQ/+S?=
 =?us-ascii?Q?jdAZR6Vmn1biMcBjZvp+wNxpUAC6R/O6R94a2Ts21OGg3TBIcB9riw7rsHAG?=
 =?us-ascii?Q?a3Tfb6o/I2L/B5uceXqiMl/Guuo2zzQ1F7VFAS8L/8tSseFEyjIOV1PHZnUy?=
 =?us-ascii?Q?7j1KL5EmbhoYPtzgbspkJq7L/6Rcj9dIHXGG9CbfLqCDCPazCxw0CqTmsPn2?=
 =?us-ascii?Q?ev17OhBv7g=3D=3D?=
X-Exchange-RoutingPolicyChecked: NYt+chCE9k33RGtqPsIb3p2Dz6nMvvG8hcdwY2IpC7LXzSVkS3QE1yeCsfe0yARGckPtkY/UkTF4pR3oirKc/OohXtJwgwAgUb7N97lrswh0xQFyiYgOaFbsnH/nHSlqCWrwjKFVyaasgYeoNyC/hZmhjxxJn0nxyMcPsreOLUV0Kf897Bc5T31c5hgAWfPiHKecCxYON4/D65+D41lSkiPm9C6vVJ5FK0ST5OZLpkyrCjr/gy8LmHv2XnOIKmT+ObnVdtyV27Eb9FHgfjxyQmTCcf5nlzfjokVCY9SLW39BsWO0Sx2CTPb66njHD3X8xOyBWEIcwyPmJxEb2CH2cA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 33d287f5-6d35-4656-f2db-08dea5256505
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:16.2363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 35M4p/kQvTl6MV04pxCCISO2IiPHpbyJPW6PUl9d4Ejpq2y+Ddd9fdFY+ADlKB3g5/HGgN3bPCEOSur6oeWXkg==
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
X-Rspamd-Queue-Id: B780A4855C3
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

Use the link caps helper to select the maximum DP MST link configuration
for DSC computation, instead of using the separate max rate and lane
count limits, which may not form a valid configuration after individual
configs are disabled by fallback.

Also look up the maximum rate for state computation via the configuration
mask when checking the DSC hblank expansion quirk.

This is a step towards unifying configuration selection and iteration
across connector types and between compute and fallback paths.

The state computation should likely consider all allowed configurations,
as noted in the code comment; for now keep the existing DP MST DSC
behavior of selecting the maximum BW configuration determined by the MST
connector BW config iteration order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 21 +++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  4 ++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 44 ++++++++++++++++---
 3 files changed, 63 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 2ec55856636f5..f822c8952df3b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -749,6 +749,27 @@ static int get_max_config(struct intel_dp_link_caps *link_caps,
 	return config_idx;
 }
 
+/**
+ * intel_dp_link_caps_get_max_config - get the maximum config in a given order
+ * @link_caps: link capabilities state
+ * @order_key: ordering key used to rank candidate configurations
+ * @config_mask: mask of candidate configurations
+ * @max_config: returned maximum link configuration
+ *
+ * Find the last configuration from @config_mask in the iteration order
+ * selected by @order_key, and store it in @max_config.
+ *
+ * See also:
+ * - &enum intel_dp_link_caps_config_order_key
+ */
+void intel_dp_link_caps_get_max_config(struct intel_dp_link_caps *link_caps,
+				       enum intel_dp_link_caps_config_order_key order_key,
+				       u32 config_mask,
+				       struct intel_dp_link_config *max_config)
+{
+	get_max_config(link_caps, order_key, config_mask, max_config);
+}
+
 /**
  * intel_dp_link_caps_get_max_config_idx - get the index of the maximum config
  * @link_caps: link capabilities state
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index a907b99cd4cf9..742b88e6b0643 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -27,6 +27,7 @@ struct intel_dp_link_config;
  *
  * See also:
  *  - &struct intel_dp_link_caps_config_order
+ *  - intel_dp_link_caps_get_max_config()
  *  - intel_dp_link_caps_get_max_config_idx()
  */
 enum intel_dp_link_caps_config_order_key {
@@ -193,6 +194,9 @@ int intel_dp_link_caps_find_allowed_config_pos(struct intel_dp_link_caps *link_c
 					       enum intel_dp_link_caps_config_match_type match_type,
 					       const struct intel_dp_link_config *config);
 
+void intel_dp_link_caps_get_max_config(struct intel_dp_link_caps *link_caps,
+				       enum intel_dp_link_caps_config_order_key order_key,
+				       u32 config_mask, struct intel_dp_link_config *config);
 int intel_dp_link_caps_get_max_config_idx(struct intel_dp_link_caps *link_caps,
 					  enum intel_dp_link_caps_config_order_key order_key,
 					  u32 config_mask);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 35f298255a677..080966ec3fd31 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -477,6 +477,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_dp_link_config max_link_config;
 
 	crtc_state->pipe_bpp = limits->pipe.max_bpp;
 
@@ -484,8 +485,17 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",
 		    FXP_Q4_ARGS(limits->link.min_bpp_x16), FXP_Q4_ARGS(limits->link.max_bpp_x16));
 
-	crtc_state->lane_count = limits->max_lane_count;
-	crtc_state->port_clock = limits->max_rate;
+	/*
+	 * FIXME: Use a proper iteration over the link configurations, instead
+	 * of using only the max BW config. For instance UHBR rate configs may
+	 * have additional limitations over non-UHBR ones, due to the DSC DPT
+	 * bpp maximum limit.
+	 */
+	if (!intel_dp_get_connector_max_link_config(connector, limits, &max_link_config))
+		return -EINVAL;
+
+	crtc_state->port_clock = max_link_config.rate;
+	crtc_state->lane_count = max_link_config.lane_count;
 
 	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
 					      limits->link.min_bpp_x16,
@@ -501,6 +511,20 @@ static int mode_hblank_period_ns(const struct drm_display_mode *mode)
 				     mode->crtc_clock);
 }
 
+static int get_connector_max_rate(const struct intel_connector *connector,
+				  const struct link_config_limits *limits)
+{
+	struct intel_dp *intel_dp = intel_attached_dp((struct intel_connector *)connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config max_link_config;
+
+	intel_dp_link_caps_get_max_config(link_caps,
+					  INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_RATE_LANE,
+					  limits->link_config_mask, &max_link_config);
+
+	return max_link_config.rate;
+}
+
 static bool
 hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
 				 const struct intel_crtc_state *crtc_state,
@@ -511,11 +535,13 @@ hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
 	bool is_uhbr_sink = connector->mst.dp &&
 			    drm_dp_128b132b_supported(connector->mst.dp->dpcd);
 	int hblank_limit = is_uhbr_sink ? 500 : 300;
+	int max_rate;
 
 	if (!connector->dp.dsc_hblank_expansion_quirk)
 		return false;
 
-	if (is_uhbr_sink && !drm_dp_is_uhbr_rate(limits->max_rate))
+	max_rate = get_connector_max_rate(connector, limits);
+	if (is_uhbr_sink && !drm_dp_is_uhbr_rate(max_rate))
 		return false;
 
 	if (mode_hblank_period_ns(adjusted_mode) > hblank_limit)
@@ -537,6 +563,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(connector);
 	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	int min_bpp_x16 = limits->link.min_bpp_x16;
+	int max_rate;
 
 	if (!hblank_expansion_quirk_needs_dsc(connector, crtc_state, limits))
 		return true;
@@ -563,11 +590,16 @@ adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
 		return true;
 	}
 
-	drm_WARN_ON(display->drm, limits->min_rate != limits->max_rate);
+	/*
+	 * Atm, supporting only a single allowed link configuration, which
+	 * ensures that max_rate == min_rate.
+	 */
+	drm_WARN_ON(display->drm, !is_power_of_2(limits->link_config_mask));
 
-	if (limits->max_rate < 540000)
+	max_rate = get_connector_max_rate(connector, limits);
+	if (max_rate < 540000)
 		min_bpp_x16 = fxp_q4_from_int(13);
-	else if (limits->max_rate < 810000)
+	else if (max_rate < 810000)
 		min_bpp_x16 = fxp_q4_from_int(10);
 
 	if (limits->link.min_bpp_x16 >= min_bpp_x16)
-- 
2.49.1

