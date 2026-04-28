Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLmoGdSt8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9C44852A1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8DAB10EBBC;
	Tue, 28 Apr 2026 12:53:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k9oYrK7G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAEFC10EBBC;
 Tue, 28 Apr 2026 12:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380814; x=1808916814;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ka8o/KFUKlIQe7IfFvWKZ/923SEJ8e9M7B6Y0BoNn7g=;
 b=k9oYrK7GpkpSnpbm1xo5NL0pY/zd3hMHoYzmsgentohFeYlczpzDe6CQ
 OudkiOnJMjXQ4BOHEskcAwjv9RM2vtmT2PT/SOA4XserAYjneTpD6O7V6
 2s5Ut+2gi8GjApT2mBpdETBPViQ6o28HzEtYi76vhlwRWuuWJRghcfAyO
 yT2dCkhnKKWJ4ulayaf7H6Dvh28S2jokoUfqIG8rpxJVnmtzHU8qawbhp
 Mak5gk/WB+iJ+ZrVXCgniMCe53apheEFE5J1tehRJmE6Dwkd6RsNlekL9
 jh8Hnh3EiUcZoW4NxE9ql5MTOfyU1SUPiK22cXvjB2y2/uVVfouHnujZt Q==;
X-CSE-ConnectionGUID: v9nhDETQRA+3dp+uli8k+A==
X-CSE-MsgGUID: NOLlUkvWSjuoufwpZntj0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398631"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398631"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:34 -0700
X-CSE-ConnectionGUID: uMieeGXdRGewZrHu7AiNPw==
X-CSE-MsgGUID: KkpElOdCQByEvAd025RUCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911368"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:33 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:32 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:32 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.1) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P+UmVBaz1XBlOC3faJX3sR+9I4ZTW8K8O3vpnOauvO14jMW5Z9fXifPgDe8+gyQwlp6VCFB9gkVQpZIlIl/XEoNgRE3J1yE+d42vbQq30NEIEbgzuCbOHgEcHI7/bfRzJAnaZ9UaowekywE2a+qhl7We9B4vvseG8T34yDxDsHftK/ERzHvgMJe1eY7cs4fZqiCq2rTWa9beUOeuozKSzZWgrDNNjloI2TfWz2XSALH18SRXJZLYtH+GdMrtIVjrs0/3ohro9A6DiTTI9/0+DTW43wHB5X8NrxSnFj/0p4Sg7R7mvGr8jkGOk9AIVxHSM2MvG1rGSmWRKkK94Ww2DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jHjdsC2hdf1MpmiKT0phY+yK6feJxvoV4+nn0T1oL3k=;
 b=obvD9PAKyACIGELM4OGGD7LvAtdXQh9+GkS+ad3ow6f2NTrA9rMJkfSueFxuKUBaVN2jg1Vs1vfSAWENQNzajkLCPSnohxWSbiu5+BCb/v4HpTKx7vkd4r0ZcECCx4YephFiCMsdT6MIhK48keP2vd/uxYfiux8C8dbYn7IYswPsS6Spl9Sk323D0CO8tN0q5eVL1cSAsOqUdslWL9HJrDLu33iMgn1/JQSPMX5VxDFuWvVy+S5OhWL9yOoeQmKnstTTxFX40xCyfKXMRKqpMmBX5PQ91NYa3OlPI/clzqaJ78ccux+sAyaMMukrkgwfnvrj3Gb5CaGJmHmWUVyVIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:53:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:25 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 027/108] drm/i915/dp: Rename intel_dp_link_config to
 intel_dp_link_config_entry
Date: Tue, 28 Apr 2026 15:51:08 +0300
Message-ID: <20260428125233.1664668-28-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: ef5cc101-9ce2-4369-0f57-08dea52522bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: l2NuyiIK9EVgnpvDwIA6e9Ub9gbZY4EVpzJk7r2QRPkydLB3IguHczQC9TCV/HyaTbwrfySaHQ2SnYJ0c7N0GVtIo/HxBWspKMrrpSigjpHH78XOeSXMGKB96d56OpelYLADHUMLZy1U9b1nBdSCsrcXlK3AGc8W3JVykSP94ivG1oSImymezsgV9+6DXhR/08BtTPARQUd8kHu8ylLzKobd/B/jCFhb4IziGvxrgVryQKOU1Uo0nJrFbjH+MLCKkov04d1CMZeHjL+fhO4g5AYIqhpMLAIFsgtp36gGrw3nAeIVUeJfsLWTUPuBklucaJRF6ZCKuRyotlqHFgECfTt4jsujAWp1zaGlecMackCnCarg2u9mBKkDYTbpj2v/W8M6/OqDIdLCcQ4wyh+iqU85R3/MoibEZWomVDI8Tawd7Vn71LlZLtK3kd+MB//5nJV4tEPs8Gd/61+CV05lz1l8ETyuRsvY7Gfw9tf4IXYxXIBDjYpeckSj+Ho5qx+B3QL703r95u2tTakiXigxPwhA8QFdOLfiEhnRh83gbsAzdJWfkH91pddXW4tvp3IwbjExRFqVsu6+jr4xYAP9sqKYHBHJsmggG5U8lKuPB/PLvo0x8sjsXrL4w7jF5vxFf6tAbQV0BPkHPyZwtMvWjWKLaIDMXsAdN+3hhJJvzTETezrkYBN2qZ/BmU3oZaqt6CBDeu7szQQMssFLy26Bs7FX+9NO0AUkBNrwY4qdBYc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vgylvIYpbT5i1HKPiRyUB8q3TiSuWoliGStT4FxgwuoiHD4BUffuA1GDO/7p?=
 =?us-ascii?Q?P03j4OHj17pr/pIPMthpni8an+YG8+7gYzjdxVg+JcmI7It/5vG5pZqvYnCx?=
 =?us-ascii?Q?C/ZI+pMQfElLnk1HiEjwGe2glLTmnxjlCQHxRseDikABSFcmlfm3SgrBUxC6?=
 =?us-ascii?Q?Yh7BVNXDTXbg7WXZrF3EZeNtQpcOSHCnE+SWyA9uRee8S7J9RfD/cq64hcj5?=
 =?us-ascii?Q?jUjqrgXmF1EaYXCPMm7oICZros3m4EANgqTkR7uBHn22jGqRlaI8M/8413IT?=
 =?us-ascii?Q?SM1pJJOEULuKFU9yW8Iyb/S5JoXsWJSLvbAWnASDFVBs1j1AtLw9xUrwuelJ?=
 =?us-ascii?Q?W3ypaoQt6FS2H2POf4ghplmuzJujEo0pEBiU68s9ccYgcfqN/62PTASD1/br?=
 =?us-ascii?Q?zRSCHy6xvA0vXb1K4OpBwKiwIcAa/Fm4RrvpoV/IASRodCncV5VmKkJS4dAl?=
 =?us-ascii?Q?ZIEk+lb8bMzGKffnPmtv+pzD/c+NwGbKo96mFqEI4TLPf6cjelzR3iM7jNgY?=
 =?us-ascii?Q?FpQ7+Bufx21k1iVDUkAYOVQWYh8cEWBtEioPAJnscit3Wzovt6Ruu15hU9sM?=
 =?us-ascii?Q?OQ4pSFdo7ZHZw9eC8JgenjX5Z7aAKKav7xGJTLtcWss2pCc7MvkHeFOnPnSK?=
 =?us-ascii?Q?qo7lP75Z4FU73XiqP9Q5GXtI1Vr0XUKdQbWdocq9yfbg1T6wek2coUpxBPKR?=
 =?us-ascii?Q?XW1H05fmEGy7I/7c/GrZJ6Wf0OS3v9GYWWSi9fC7woFS/PplQeu4x0sTolcN?=
 =?us-ascii?Q?NVxxWWrTFHFuNS0HvFi1/dpJovRQSKJbsCr1QpB2eZ9PGO+dJcUYfefgzq6G?=
 =?us-ascii?Q?ucMfU/C5xSXMYZGqWMSYcDUlOhBCanHlj2/1JYF6PZ030hTIVRIsnOz5jRB+?=
 =?us-ascii?Q?LVF9kK/0UjW0UsE0BBPFCuPVye/DvJnJw11hJRzznfsHYWrA1Pr+nQtHwQeG?=
 =?us-ascii?Q?c4GJRFeFvOKXKDGhXE2WHdkWQO+XZCCDvKGzZd7Alyfju1xhGj4+hiY1VEif?=
 =?us-ascii?Q?o7LzVWg1sN4YeoeLgy0k7F+MSJ0yiJsZDYCQtJIZsU15g+qUauKvMBd20Vty?=
 =?us-ascii?Q?rloCO4Ign+PLzQ4O2qH2xlV69diyOir6Wvb/QVIqd6NQvkZ8jL6bmc6OUywN?=
 =?us-ascii?Q?qM6nAl8Qg3fKhq7tzlr6QWYPoUEteko9+1URWehCSij+vPmOg/qIA9meqE7V?=
 =?us-ascii?Q?iNSHqN5y0KzamJ1bPF/BOwMyj4mKMsUxWEsqHq3Neryhud5l30HHHA18FRZ3?=
 =?us-ascii?Q?fg5jCVYL5KNRY4aj+3/SeLA766tk2YUEtfbqO1yUsU0z/AdIv7rgs6J2qwbU?=
 =?us-ascii?Q?VhuAdIN2b3SiWYETAnECYpdPXBsR6HPNee5FhP/c54y7e+JQvmbJWxwANFp3?=
 =?us-ascii?Q?6r1vg6yeut6LvHQ9Ay+YfAIA0CsdjH+beXXz9bIFufDMJc4w+2dqvDBzZ275?=
 =?us-ascii?Q?PAnaxwtrJKjaTJek3DRTJksVkiCeMbFt5n26mQ5GZJ+SuLAWhgDxeAEHqd54?=
 =?us-ascii?Q?RzJLjTpp3zzu3Mhhc7zCL3rbv1WDwmvKjiG1GiubquS0aODLH7aGJ50OxLKH?=
 =?us-ascii?Q?/PJkapLssoSGDEqZFhUkqx3viMEnwNdahbZJ60McS4AHHVzFXEpuchMVw5Kd?=
 =?us-ascii?Q?yxz0IXmHaLhuFmYV/CmTbgzef4Og5I4hg3QMDxcNilJjrdFX+TJxint2IBKT?=
 =?us-ascii?Q?A44GajwCVTU9740+An+yV+L0EFDOxtFH+mqg8Z5pcGBOxVBr90R6NcdWo9Hl?=
 =?us-ascii?Q?ANpFX/dgkg=3D=3D?=
X-Exchange-RoutingPolicyChecked: WPcMOt4eBx+Em5pEpzyURMQVMFKUQrW9gxWyIh78QgzXSDSIVxCC3WhDOTBS7QyHazKztxfMmBPk12HAfzQwJd/v6lhkjYBjVTXWsW0nBdlFLz+8+/5koHx0FKDRXoXUrR2bqnQ0Z7ccJGxQwSjUhmUHjZn0LNb/CfkRkxynFqi9kSfsXz5r8v8IUQeWq2mowLvd1kR+FKW8x96DM9C37jnL8AC8kLksdgAFkjcSV83qla4Y4GIGk9XfSid9VVkRe/uZ531J+fEpZtVFNsi2ewt4pVLAAeDzEUGmuEtEeYqINgP9rF11oM3+1APUlaQEO9WMKqsCjpXf4mFJOyZPEQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: ef5cc101-9ce2-4369-0f57-08dea52522bf
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:25.0264 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CjVv0Rvmjt9PNgegRcH0oqB3tZ7tsoy4xzgFMyZZFp7cdnYdR3IHqnIDoowPqZbcgMYz6xNEJYTOqlw5US9AnQ==
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
X-Rspamd-Queue-Id: 4D9C44852A1
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

Rename intel_dp_link_config to intel_dp_link_config_entry to prepare
for tracking a link configuration in both an internal packed and a
public unpacked format. A follow-up change will add
struct intel_dp_link_config representing the public unpacked format.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h   |  2 +-
 drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++--------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index dd61d958d5b6c..e591bca15e4eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1831,7 +1831,7 @@ struct intel_dp {
 #define INTEL_DP_LINK_RATE_IDX_BITS		(BITS_PER_TYPE(u8) - INTEL_DP_LANE_COUNT_EXP_BITS)
 #define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
 						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-		struct intel_dp_link_config {
+		struct intel_dp_link_config_entry {
 			u8 link_rate_idx:INTEL_DP_LINK_RATE_IDX_BITS;
 			u8 lane_count_exp:INTEL_DP_LANE_COUNT_EXP_BITS;
 		} configs[INTEL_DP_MAX_LINK_CONFIGS];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3dc27dbf2bce8..4f016adef93be 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -688,18 +688,18 @@ int intel_dp_rate_index(const int *rates, int len, int rate)
 }
 
 static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
-				     const struct intel_dp_link_config *lc)
+				     const struct intel_dp_link_config_entry *lc)
 {
 	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
 }
 
-static int intel_dp_link_config_lane_count(const struct intel_dp_link_config *lc)
+static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
 {
 	return 1 << lc->lane_count_exp;
 }
 
 static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
-				   const struct intel_dp_link_config *lc)
+				   const struct intel_dp_link_config_entry *lc)
 {
 	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
 					 intel_dp_link_config_lane_count(lc));
@@ -708,8 +708,8 @@ static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
 static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 {
 	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
-	const struct intel_dp_link_config *lc_a = a;
-	const struct intel_dp_link_config *lc_b = b;
+	const struct intel_dp_link_config_entry *lc_a = a;
+	const struct intel_dp_link_config_entry *lc_b = b;
 	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
 	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
 
@@ -723,7 +723,7 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 static void intel_dp_link_config_init(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_dp_link_config *lc;
+	struct intel_dp_link_config_entry *lc;
 	int num_common_lane_configs;
 	int i;
 	int j;
@@ -758,7 +758,7 @@ static void intel_dp_link_config_init(struct intel_dp *intel_dp)
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	const struct intel_dp_link_config *lc;
+	const struct intel_dp_link_config_entry *lc;
 
 	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
 		idx = 0;
@@ -777,7 +777,7 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 	int i;
 
 	for (i = 0; i < intel_dp->link.num_configs; i++) {
-		const struct intel_dp_link_config *lc = &intel_dp->link.configs[i];
+		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
 
 		if (lc->lane_count_exp == lane_count_exp &&
 		    lc->link_rate_idx == link_rate_idx)
-- 
2.49.1

