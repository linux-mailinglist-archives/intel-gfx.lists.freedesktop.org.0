Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGS4JEmu8GnwXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B4B4855C8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7200310ECB7;
	Tue, 28 Apr 2026 12:55:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sm3XE0KP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03CDF10ECAC;
 Tue, 28 Apr 2026 12:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380929; x=1808916929;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Sc383ldVuNwvoQqYhFAao7UnGWbre8lHKoLMhQfyv4Y=;
 b=Sm3XE0KPftiGBMQPFX5df/sZb7J09w8tEKM8RLItLp5kw3xowsC3pUzE
 MzSGJPtRR0vktjYXCaJceuq5cyL+7S4RxssIs4VXYh7obrhw3SyyMyP3E
 byP2CmBxgBRfCfWSDRe6V1U/NFvRnu4FG5gwe/Bccfi9NRPJBslXTTn4o
 QgdazNL0Yv0qnEwHiYD/M+GNG+DDRgcwMfqVG90AxMZkQ0x21G72frD5h
 /mP7/9aQ6GPo4kALSchZH+w3SanJbSY0SIDWRxm8rk/Xnk6Nn6C7xLxc8
 hT1NO8WSFElHLI6sOPjkt2VUpKNWtA/LFnL/SuVY3+pCP23zL3gEoqief g==;
X-CSE-ConnectionGUID: R2PULArZT/meYabjGmz4ew==
X-CSE-MsgGUID: jsCvPFRTTSWrc+FBiGO58g==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318784"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318784"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:28 -0700
X-CSE-ConnectionGUID: 2yPnBlKUQXy330udZcm3Kw==
X-CSE-MsgGUID: 86tl2F0VSFWkyFZfTNrTvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818251"
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
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.47)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GA4cK64OMxFfT4bnaRZJL9rFdMPOAhcQwIFJxUb8VD/dQIGIYJVb9flV51Kmhq/2KZrylzn1WKm2tUqB5aax6QK7OsT7BLsJfWwYPdN78XhZmLdik/UZJuVAuIqFCAgUTXOuv/KOrWpue2m2JODeGUjcVL/AMVQdJ9vYj1Op1lBZzlOy3JkV7IeoP+xuIeMMQ9AKz69lJlhOz0hn+Tr2C20qQK6Xm7SQkgmKbbILnk3szzfTm2AEpDGCRpXjFLAU4IEPn4a/t7rspnY2KSH3zC0WPwbqTkzewgnZsB/+ZvpNNdB2qFPPqTviajwoE4cqoDwc205XpoDzNxz7JV2log==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZCRbidJ7avDfD8mjUpC33Mqc895HuIArPQfd1gEf9gU=;
 b=NMhbzkzQaJrBOi6VFN//B0+PREMr/FRnfWKyoUOrrY22QaHPUEG85B/15mVOgqGAk952+2NjcoQvVb4/ZX0f4Qg20OyKXhB8NXNx2u0MHgOA927ZDfDFrsVf+myKgi1qUchwOLCIwEq8EUJJmnfiPcXc/rfqPUkgKBdZopDcOvxvwwl5T/IzECgx7b3jTmurqIDZRaBiqWA3ziaDfYVkKl4EkihM68S6SAERi0WAuqv+35NvU4+DYcXoN+tdWufMrSG/fKosFVPR5x8oH35oG9gzlyq310bc82EUVF81idMtrxqGBOpiGxliLbOCq1xMpqRULYbsczIaZVdvBxn6UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:23 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 094/108] drm/i915/dp_mst: Use link caps for non-DSC config
 selection
Date: Tue, 28 Apr 2026 15:52:15 +0300
Message-ID: <20260428125233.1664668-95-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 32aa55b3-309e-4354-63eb-08dea5256414
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: cakTrVN1puT5j/pZeAKBs5PMon6Ff/XBExPt0yPbF4wTzyzXK9fTwrY3IgRpQ5wyMuNobbEfWv+RIFUqxRMkeJc2qM1e15ICc7H3tMg4sPIXkWW1eUNLI5wVxacaIbVlxGO1JJiT3LWty6BGZnZn1sYdGlh+VASR6UErEODzFfNs7zSnHrCVwAhfcCcUbuiy6wp+yxddNWsL3lykr/jeZc/n+p99ITHNO3Z77FoKEEn4iZgF1bHn8X/wsWq0WXvGfQmjZ4OCmPGNR04EVcDNhCCZnqQwk0ndnzGYvhRM7b2Ce0fon6oL0ADfS435sAK8Nak0OYM3erSas9HU2BQuQR6hxOtiymZIIHZkLZoDTnqI2tD92Y0OXNNX/AdfIKjRzcbQtbYOt4fUPZRPpkvTAQko/6IBi345WpHRklkFpzB0veO8Fy+CuwfAW/jQKwOTrtdCp3TcDgoQcMh0/+ekrGXm+gxc/7ziN6YMRhNfLaHqOUx6ZQTMS8irxNJjHOJzUuwdv3wDeJpIXraWbiX7i90A2OQU8eGpHroLV9tjENIUVK/SYHYIa36PT+PvQgGNYLS4hL3ULII/+RmxjnXxipdaDNZNiGdomoXeaIchbwQOPb/ucXIq9BU5XyE6IIQJ6+5uVjtXIZsiExszRabTm5gm1j01nfDgSoXAE6alCotJSpmz0QaVQgM2IORKoTvP+6oyq7g8/9cSdB2uVx21a6lsZAQTkrc3abEz+gL4mxQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AUlcGWSw5ez13dRwqs3g7xpxMTsJJx/gL5C0wnXwNKHQpXMxFHlk5lVz3dZ6?=
 =?us-ascii?Q?WjodbU+OJOTarBDtDgCMywb+RfVvOXW2qZrhpESSHf6JFk86QYD419It4Tzq?=
 =?us-ascii?Q?ByRFXZxrFN1RaHfYzCqREHpPRr5luNY++u6oxmQNONHR18B5P8zvb9mw798d?=
 =?us-ascii?Q?xUl7fQxqQZruoRMF+Z/FQhyP0Gl41sWddYI/mX4Z7Lt4C7XNEv0RIIwotzzp?=
 =?us-ascii?Q?YWTMjrN2QP5HWHUzCkgCFC/pytwOVfJkY1NL4gJCqidIo3CNlALru1Fb59RY?=
 =?us-ascii?Q?mxj7ANOLT6K4WG6aViiSXm2bj8a1QNVg+uGPNdlVHIrs+BkNRUdhbsrJ6OqL?=
 =?us-ascii?Q?dj414vRedITJlTC/eTqiZQv55O+c6zMxJ1Id8wW8tc4jBbirFECc3MZtF9Aq?=
 =?us-ascii?Q?0cYZ+BGt1oO31+7/hliUW8Ejuzi31EvTDDK4wErq1gYuYQrqmqJ9KQ16W9lx?=
 =?us-ascii?Q?NBINCmVYukrhgFyHPB65Yvdn8tXAhdDI9X86jxcII8vyXlV5Ek0E+wv+9W5h?=
 =?us-ascii?Q?crxdm4svDWfj9r0s1c/AOgwwqzGFzNhBilSw937DsnAPJ+Ui/AROzF0C3XyU?=
 =?us-ascii?Q?XjhJLX7u1pprOgeLTHP/koJp4kwuB8NEBwT8qOfKoQLCEF/GD2CU05kS7VW6?=
 =?us-ascii?Q?m4a1LHKG1N2UJ/UTLSZyoWuuwxaGEJBMjq3kiqiMMeOoQAMG+hfiExye6Agf?=
 =?us-ascii?Q?wuGnjIumVDtZe94vU0/Ikm+cuM3m/AiI0AXtoGhsF4gACuIMlwhh+b6LMXyY?=
 =?us-ascii?Q?sCK1ckV6sXCAKp3n0YMqBYXXnePji0N8Z3wedndkZPpEtANWGAStS4BIZwcl?=
 =?us-ascii?Q?kqEpQv4XFKG/dGUfa0KsXzqYw/luHP1RvyPeimUKomgyqNlEULrZl2j4kyWh?=
 =?us-ascii?Q?CWmEAZcci+feXDYfVPOqK3M8p1ZNaayJA08/mji4DUNC/Dj5r2LI8o9sVrIJ?=
 =?us-ascii?Q?hkpGe5JXc9Yg7rjFlXq7k2/klxKtArRl4TpQcTa4ylepM+tHxjYvfYKJzdlf?=
 =?us-ascii?Q?2kExeZrxWYU9BbnQaxwenvFZPoZBPvNGFRk9Vr1xHcmdsIB3NNKCK4GI99xB?=
 =?us-ascii?Q?jUgcTVOOmvVucm+Kd7IR3g0g18Sdl1/dG1Kt9SK+AWIwUklE4nq9oZTW4nlj?=
 =?us-ascii?Q?lo+F5Gd1Qs0UDRIgfRILpZRX60JlY/FExgiYUZs5lYdkT4A7G9eQ6iWkHH18?=
 =?us-ascii?Q?pXT4CYhvs+e+u/RaMu5+K0BPdrYFPjj1SjibL4nauRrCPVWGlokd4ULi0R4b?=
 =?us-ascii?Q?MgBQiAihnJUKbMNr9WmgYoAq09S7dc8q4AabXhbVyUdkhk4xxVbPSI/sE//y?=
 =?us-ascii?Q?vInI1z92ZYA/2cXMO/O8o9HQ4dV0Vki6MfdDSvgmaUN4dp0vPbToSkQXkTgX?=
 =?us-ascii?Q?YklBybEIILzWQfEDs+fGnoflMPcAHwjXBfoZ+0p1aWHxtTXekcs8Uw6NnC6P?=
 =?us-ascii?Q?SyMOwGewmsaH8cMJljR/xvYAjkGXTjuu1QXKELRPGS/q2xSW268K9Z/hU7Jg?=
 =?us-ascii?Q?Pf7L7F6EZB3aEddWXAHujfgO0l9ZnKWvAtEGf0Seld+WjlQsYuW5tgNmrh7Y?=
 =?us-ascii?Q?hz/8NDlQosxKlpGSc80OUIcdn6itkvfkZWEne47qGqEhw/6nzemy7IztFsfl?=
 =?us-ascii?Q?GBhlP4xzHnkgkGRp14x6m6qtL+5BS3L3atZCTBskW3Sl/LC2Xym81Jn/nQXF?=
 =?us-ascii?Q?QSFE/e3yiyaRT453PF8+wqt0P86AEJnrguhyrYZA5JcfSgf4yjZ0ALneaMo4?=
 =?us-ascii?Q?xcP4DO8rFw=3D=3D?=
X-Exchange-RoutingPolicyChecked: jCSb8hPTIT+c80AmM/sV7chingSWlxkrfyE99+K28KunGYe8A2S4Xr4IcooL4xN0rOvigk6sPfR3+JJKi/AZJgs+3idI+7c+MZsbFol4NcYyseWy3z8Nq0PpTs3CrOp+LGcoc5K2/Wv2kpy4ptrLwH3UQHTvc9s5MOmg/c/qCUtHg23MwJ54ouXZswR0TbdTVX9PL3i1L+EUerELFyxiL5ghXdoENANrspPaQqSRhkSKXXtSDkoJfoZcyh8l+LtUtqYLHVVI4pkuk2k6H5pgrfxTP4VhqPoANW3yuOJYo+/KUtIM3sXf0k4EHIrCQsJ1bQafCvTlSlWxLsexEdUbUg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 32aa55b3-309e-4354-63eb-08dea5256414
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:14.6588 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UCJuDOvFoy8jO4nB2FlvsoD72jllHAJT/bHhCbkMJJNcBxLsF4/vmgG88bc84ozrA7qRd39Nl3XKRkw6VfFJKw==
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
X-Rspamd-Queue-Id: 47B4B4855C8
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

Use the link caps helper to select the maximum MST link configuration
for non-DSC computation, instead of using the separate max rate and lane
count limits, which may not form a valid configuration after individual
configs are disabled by fallback.

This is a step towards unifying configuration selection and iteration
across connector types and between compute and fallback paths.

In some cases all configurations should be considered, as noted in the
code comment; for now keep the existing behavior of selecting the
maximum bandwidth configuration as determined by the MST connector's BW
config iteration order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 4736bfeb25e06..35f298255a677 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -445,8 +445,20 @@ static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
 					  struct drm_connector_state *conn_state,
 					  const struct link_config_limits *limits)
 {
-	crtc_state->lane_count = limits->max_lane_count;
-	crtc_state->port_clock = limits->max_rate;
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_dp_link_config max_link_config;
+
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
 
 	/*
 	 * FIXME: allocate the BW according to link_bpp, which in the case of
-- 
2.49.1

