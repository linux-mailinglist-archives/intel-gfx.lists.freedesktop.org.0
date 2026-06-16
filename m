Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i7PAOomtMWoipAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EB669514A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=LJVdKpme;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F281210EB37;
	Tue, 16 Jun 2026 20:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE63D10E83E;
 Tue, 16 Jun 2026 20:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640583; x=1813176583;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=yOdeBl3mLEWuq+3iQxVBbyl8v4vDgbxBF4XYKmlJ66I=;
 b=LJVdKpme6I6C/r28zkb3mmHnd+ClRN/u2reuCgrOx5WUup73XN7WuhtQ
 H4uB+xNDgaShL8bkTkcgUlrYNh+8ZEan+Mr0LDjfpraR/wi+w9ZzHLcPD
 hoQYkPqUBYBRIwkAgxu75yI+1Ctn67jSoL54DvQNvqKyPu7Hmkl1nyzo2
 23cPXkOhe4AtOt/dSDD1MrKlKc8krDxPM+b+mR2/f6ydZ+JJ/qb1nHFXE
 wgpSCHceo7ESqRxKP0ProKgHp86TV2Ks3Ao9iuVAhIG0+0Yn4UAD/7MPx
 tWwhKv/We4JTS8KDPgRDFRF1twlMANBEDw3vllGKygBTbGYpzLRQteeHu g==;
X-CSE-ConnectionGUID: RE2sLuw0QgCrDNpfbM+LYQ==
X-CSE-MsgGUID: nv4OBUC/T2GbKtaQBLUGaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86255822"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86255822"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:42 -0700
X-CSE-ConnectionGUID: 4+MpKbm3ROa2qItcwPrvjA==
X-CSE-MsgGUID: +GujreCpRvyEXy917W45FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271579763"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:42 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:42 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:42 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qT+ue/Cee5ZIOs7sUIpHaJKocraoLuno/RdoleZ+k75IrXRGuzo1AnLLfI3Gc21Qx9cw1jDZ6a/Dmcuw7Ex6Wpa+ywqnjSCtH6AeAAdpf4nFWdyvW4ZaTqA1DViPnCDkj+PfxQ3V/LeEO2pUEpy9rPgkeYoIDHDIijwfzl6+Zn7N1JlLoY0v6U8UqqvNWb18aBI2EwsLjpJ0wvwqIvkTD0ymZKYo8ZF7kyJ9CKmd7QyS5JAfDE0GUms0c+Pc96KiFuXkVzzo3+4if2P7YkIu1vjy3uwvAsw5B7/UMoz2Ed79iYg6Gx8ephIyVBi2CXfyVBRTzI5CEF5+UJdgaVQjcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HwvH2ebYpJUL4vlq1BaB9ILo3OtPGdFNrtVtmBwpllA=;
 b=Qc930nHQpLO3Di8L2vK60oIjpHDnkKCLUzXb2tLFAyzDtu5RZkaLn/J4Rs9XP55NORg7D4MXzoEfa9AKfm0wLHuIn1Mgp6ckV6OTQtwg2ye79A5PMEpRm2WLnDwd1BZLaSq3bb6MWJLx3fIcgYMY4z2K75fGVVFyvMUqRRea4xlj5gazAMk4Ouk9XQyb56RzS5LF/rL+P1WjfoS9WBg21Xd0RejGYYyvgsSrYrsKMkI7DnZkzeP2k9+F6gjBXiQErMYcA+fN4NX2F7YgTK7EMFjptpx7doEFvKXmWncu0upVAxcqepwwztbBoqCOdrkPbZl2LpY8fcDC5wcnN6nTXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:33 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:33 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 09/28] drm/i915/dp_link_caps: Move forced link params to
 link_caps
Date: Tue, 16 Jun 2026 23:08:29 +0300
Message-ID: <20260616200849.3534628-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: ba8aa712-4dee-4309-d59c-08decbe32c75
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: g+JQsD3yY+HDsxke/eLFtIXSFTSqaffc7GwV79Kb2Fb+56VGVYqSqeTgSjqyvsP9dE88IMiPWU2q7m71TJ3ymD5Bjc9tmHRKOKkICwsrLCaNo+ODJPFrkCZzc4BZOhyjUP1coK+6e1pmDog7bLdw48rr5HCc7r1LrBqvYvOUZ6aVOMtTjYdBPj6OdMbONRmXFmn9ms1a4nU8wVTur+7WeCRrHQVB+MzxwdsQJoXxuImlPamIbn4achUE8QTNQ2UJCsknmRTd0Rl1zNEybCUzqPQJVEktYSU50DC0ssMeeB12L3I8b7OEInHmfQBZ36TGVjE8Yib5oTtO0+WBsTHsviFeXceW9qAw78t0eW3ORVyHwbNGEzg3m+7Sm3RpvSDCEzjOImcpo1Nf35kUhK4EqBP98ONkyc+lBY3u8pN90oa9iAgVY9wyj9upjLGv6s57SRCKX616p+r0ga4VrAFQgFunEoIP9TGWa7rGCuD6xADgUpuMZbK1D6qk3boMJjlduVWlJGXvoY/zmmRz20oGaF2sFO1t2H7TrrgfXOMwjpwlKYuXlbH9wClwTKf7kiorG7f+IGFRiqhZkgX1YhlaYMdtQ+dOFgR4FW/Zc/gfVkGwu2j699y34MrtgRueB3WicQEUGSJUgPLrR0dE+MDdugtoebk+1H3GAB0kuHvz9VbG8zYfF3ffntBq0lWx6TCC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?b5hiTQDEJojToVADOULhSoa4VgFhp7usOEMBbjiRnKMyqduNDeJ0zHrAX565?=
 =?us-ascii?Q?Bk2cabeklUImiyASSGzepKFBrkOE/BWCspz4qcZ3HpnBLPwCvZZlFk4uRcrh?=
 =?us-ascii?Q?rXk9LyaG9uiL13tKWbP/W1i61ggMlQVzUL/p2V/2Tl4FslmrlHosvNIUON+i?=
 =?us-ascii?Q?BryKhlrR8IdFprvChTBQywc1VGQMl/KmVWwogioZm8itGgYdT9hA8LiynVCv?=
 =?us-ascii?Q?e2qCdCeH6j4adOOIAI0ZeYgx0SSMFllukTbPB8coeY8PUkfmZdZ4FtpruO2k?=
 =?us-ascii?Q?9WkXwY79AKRy08Vp24QOcmPXBalzj4DKyl8HVqMpK1MOO8DUyDa2ckMAkPnt?=
 =?us-ascii?Q?7sEjQjlDQ1OjrqBlLe5WORAg14jrlTaYHFnU1MkzM8araYrw3XVTLU8ZDA4d?=
 =?us-ascii?Q?xSx2Qjw5f6mksvyUFsqoCUokfVgDWqW5RzIir1KSe0sR09vgXzBEnUxMI3ZT?=
 =?us-ascii?Q?qnxphS2ubYMlRUUM79BqVK7Kx4O46h7uwv7dXJsndpV6MH1mJ4a5I6Cdp5OX?=
 =?us-ascii?Q?uK5eGgXvKfFFLGwShKVxr8rCuJNN6UvAjymf+aUSp/yrvt1XhQ2FV8XwjA+k?=
 =?us-ascii?Q?z9YriRat7HcWqiP+Gl1HiWGp7IWVcV43mnJ/7e+n3yRrCReFsYZ5dUgyIG+B?=
 =?us-ascii?Q?JVYX+xeRvxsPr3xSrBn72Mhzmbzdzqqce4oasVUgJyF7Sv6qHX4mdrEMQIt4?=
 =?us-ascii?Q?SIHQ60qWqNbQnLYwgCRSQbAlEjm2vXYnRtOKgqPX5mAAWigKy+05ZyJC/PbW?=
 =?us-ascii?Q?jnRIS8NlW8OAZBNxM0n14ALmIN1pSCwBhzdAemcDWb3e9M22OOX1raTh0nX2?=
 =?us-ascii?Q?8Qf04y9+NYiV2YnkZUh1cl+6jYsuDmPG02QfrwnRO5jrc7FESsbLxCjhOqGl?=
 =?us-ascii?Q?vt41r5OFwNh0fWDDcJ+u+uKSvCZ7z7lYvSr1tyggPYgPuYRA7E1Q4eau5mmJ?=
 =?us-ascii?Q?fitEMm8jMwdxLdvIUGcqaD/qJugMYdLb5YoTZisEprZkcivjzln/jMWTraHD?=
 =?us-ascii?Q?f6ERr4T05xSMp7C1M+DbTM6PqvkDUKFuNcS/AnmOy/pz4WIiyfaBySJ3MaV9?=
 =?us-ascii?Q?LdwQWGVopvkgVVeHkI9z+OEhTY2e01CKigocYzbwhUs8oSeTQgt0yBV3nHcE?=
 =?us-ascii?Q?zgeiRbCapKXXCIFpxypqvHSz443YZazN++UxcrEz/GVmo5aKlvW58F68TaCA?=
 =?us-ascii?Q?9F9rAgVBUq8LcxdN9/nzf9I7YOo+MoYnzSONbWLAHLZYJ1YUpNcEzjtv7X2j?=
 =?us-ascii?Q?zvDK8bSrBmfjIxdqfCJHDLsz8dsQrobHOqxx15Rh+RQiRPsJds/k0NLmGvYd?=
 =?us-ascii?Q?ZFQpHqrRPD4yaAiVjd7yl7+ccGe7RRRNrHHIiCrkNAsLEd18z42IvGjXGnwa?=
 =?us-ascii?Q?JC+SbUlWRnSZvIoivJsBF8yk72cJV9MipG31WPmYIavciXL8G8nqlvtEExNu?=
 =?us-ascii?Q?S/8A+OMmnJL7to2u8rE0zjW7HptaghWWxPS96dE+qYHua3kKxM13fKiYvQyK?=
 =?us-ascii?Q?nbfeZggCEjz/BbUZo1E6VLvSBp9/YLqxaagO3ktk/QHmIP5gYAiADH+Cimwb?=
 =?us-ascii?Q?TkKO3GHXRmn9rWY7bNUhkg7teZJoIG4S3DFa3J1K71KHg3c2GbZhawKYzkM/?=
 =?us-ascii?Q?gLtlRONMSldmg3FFzffhetJ101bRwvVokZw3Ixzdr7NGWBaAJ5RxRKL8ihKs?=
 =?us-ascii?Q?wN/K2kAXmHgijCSGrNbfnFWYZBu3Uko60T0iSfnzqIrAquWFv5CvVEwhA/CJ?=
 =?us-ascii?Q?Ih8QiJhmOw=3D=3D?=
X-Exchange-RoutingPolicyChecked: mEQ6Cn/qnDtX5Kh6MV/ZLxVhL68bKJAveyMtkeA6a5VOVkeXlO3WmzKMX92TgyMHVizkFZiUCmikPLmtqjYsncvWXnb8io7iD0RsJw/vhUkoNTWM/JFjB/r+PlwMdc4w5QV9ruIFZ9yrNJvzrTtSorByC02V9wDQTzjpesibFTZ4ab5A6QeuZI/EQVumDFaOQIsYzIXLpSi/C1NttKOkHtle/KsJ9frkSWWFCrn7VdMIMCcIfUpLT9qFTKwAE+S23/mpT1bnVeCR5Xg6Ff1hmMnVJ9LOWleEEPeB6kQyZkSwy71inf0yi1yNCtN9nY9prkpcrEv1e5Er08/fgXSCOg==
X-MS-Exchange-CrossTenant-Network-Message-Id: ba8aa712-4dee-4309-d59c-08decbe32c75
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:29.9689 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xes12grU09VfWdKkpSGi0Wde/5WDH9bz/RCHPZl2AEOi4+kTr7Yv19patA0dsfDLfc9wLHI0jchjUm7TZ5Ea7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 81EB669514A

Move tracking of the forced link parameters from struct intel_dp to
struct intel_dp_link_caps.

Previous changes made all users access these parameters through the link
caps helpers, so the state can now be kept internal to the link caps
module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  2 --
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 30 ++++++++++++++-----
 2 files changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 10933ccdeb31e..c84ef29529373 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1865,8 +1865,6 @@ struct intel_dp {
 		 */
 		int mst_probed_lane_count;
 		int mst_probed_rate;
-		int force_lane_count;
-		int force_rate;
 		struct intel_dp_link_training *training;
 		struct intel_dp_link_caps *caps;
 	} link;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index ea90e84500a89..8ecdc01af70eb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -15,6 +15,12 @@
 
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
+
+	/*
+	 * Forced parameters requested via debugfs. Remains set across sink
+	 * disconnects.
+	 */
+	struct intel_dp_link_config forced_params;
 };
 
 /* Get length of common rates array potentially limited by max_rate. */
@@ -44,20 +50,24 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 
 static int forced_lane_count(struct intel_dp *intel_dp)
 {
-	if (!intel_dp->link.force_lane_count)
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+
+	if (!link_caps->forced_params.lane_count)
 		return 0;
 
-	return clamp(intel_dp->link.force_lane_count, 1, intel_dp_max_common_lane_count(intel_dp));
+	return clamp(link_caps->forced_params.lane_count,
+		     1, intel_dp_max_common_lane_count(intel_dp));
 }
 
 static int forced_link_rate(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int len;
 
-	if (!intel_dp->link.force_rate)
+	if (!link_caps->forced_params.rate)
 		return 0;
 
-	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.force_rate);
+	len = intel_dp_common_len_rate_limit(intel_dp, link_caps->forced_params.rate);
 	if (len == 0)
 		return intel_dp_common_rate(intel_dp, 0);
 
@@ -76,6 +86,7 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int current_rate = -1;
 	int force_rate;
 	int err;
@@ -90,7 +101,7 @@ static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 	if (intel_dp->link.active)
 		current_rate = intel_dp->link_rate;
 
-	force_rate = intel_dp->link.force_rate;
+	force_rate = link_caps->forced_params.rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -150,6 +161,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int rate;
 	int err;
 
@@ -164,7 +176,7 @@ static ssize_t i915_dp_force_link_rate_write(struct file *file,
 	intel_dp_flush_connector_commits(connector);
 
 	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_rate = rate;
+	link_caps->forced_params.rate = rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -179,6 +191,7 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int current_lane_count = -1;
 	int force_lane_count;
 	int err;
@@ -192,7 +205,7 @@ static int i915_dp_force_lane_count_show(struct seq_file *m, void *data)
 
 	if (intel_dp->link.active)
 		current_lane_count = intel_dp->lane_count;
-	force_lane_count = intel_dp->link.force_lane_count;
+	force_lane_count = link_caps->forced_params.lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -256,6 +269,7 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int lane_count;
 	int err;
 
@@ -270,7 +284,7 @@ static ssize_t i915_dp_force_lane_count_write(struct file *file,
 	intel_dp_flush_connector_commits(connector);
 
 	intel_dp_reset_link_params(intel_dp);
-	intel_dp->link.force_lane_count = lane_count;
+	link_caps->forced_params.lane_count = lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
-- 
2.49.1

