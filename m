Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IMrGIcmt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20866485268
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7135210EBB3;
	Tue, 28 Apr 2026 12:53:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hvuQ67LM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0168010EBAA;
 Tue, 28 Apr 2026 12:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380805; x=1808916805;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=cUZLdxXx0SoW1YMwoqDaKj9frM4RL2iBh82Y234h248=;
 b=hvuQ67LMAwYY6mJKDmUdwFIo9b90FD+bVVNYuHnmIu7oywfEN0j4UdYe
 HY5wUdiVIo0spEmLWF4q8ZEiO0E877/+tC7JcZHO2213PsGl1GqsdUufP
 GzRNVuiXqWw4XUunq0ohnzMqYyDKF8gVNdB/p2K6pa0QGfsEeOifI1wyx
 f367cI8oghxiBeb27J+1O2cZQAu598T7yXBP/6iBjm3Kzifw6T6LCqQ7R
 Vc3og9xLMMxrqrlzjgUfEyI2PxMVrZLXXKl1djMb1yOzr36DL1BhC3A8y
 y+ZhHPgYto/CzBSE7pwGjpmP500DhLOyd/fv59eOLUSqazxFcJ+6FurI8 Q==;
X-CSE-ConnectionGUID: iNOtYjmmTPGGVjO1xcmLBA==
X-CSE-MsgGUID: qRt9/ejzR3e5qbYFVHEo6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398616"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398616"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:25 -0700
X-CSE-ConnectionGUID: 6noGhy6JTweXRpEaF55omA==
X-CSE-MsgGUID: oFxMQq0RQiOBBucZLtoS2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911342"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:24 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:24 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VKD1p3xu4ZVGA6UJGaIMXoFoUMHaXlIEwfYhWV/fJNOHmGe8ITwhhzEJ03dssGh17xZ9ANNoxKualmYMiRnNWvF+S1llTDLHuIlvYNODTyGgCQ5O89sO3IbbwSEOr694XP6jlk1b2sojnviwE1I91tGNNEpyN8eO+UOssQdn3s2Lres+LkNWcA8exZDMc+u64pqy1sb5Q0BoS6zil2iK7xouqICXFmZuXBsaJX43lch/aCbBB+ebnHppeHJfpYw7N1Dh7sqeKKXFHDkJCO1Y8kzLtsQ/N702GAn5DsMLia+gfKB+gblFO2Essx29TmbdCSCNeb61F+KzhPfjKUFDCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t4NEvjWBBLrAkMUJRjRRy47F5iaV7qHzQTn3frd5mIk=;
 b=kXhBv1HU16SO8OWfstKMevBZmZGAFc6T257ZDAFtojr3kCjqRbkrRm0g3eBc9mZKXWRrp3r/bwt9zXxZfHUuTG42aLmuQDjRP7ClspLM+gYww/YhB5MKfpUQ8r66ceJZx/MB9buEY4xQH9epcuL6eW1ty77SOARrKMwKSd/LMm9uHyeJT61dtUP/JYFOCH3G9rOa6Ar48jfZv0IpvI4phH8Ub56BPIoEAs4gmf6g89Ioh1P5fI0aqil/Gh9whRyVhidjPuFvfnwhd4OZJU5HeKGqGs1anUgXn/ojNyXHceM7OlX2HHQhP2ToSTD2AJf0Yj4GOH2thKY8jdHHslrq8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:20 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:20 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 024/108] drm/i915/dp_link_training: Disallow autoretrains
 after failed modeset
Date: Tue, 28 Apr 2026 15:51:05 +0300
Message-ID: <20260428125233.1664668-25-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 10af138c-490f-4589-e684-08dea5251fcb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: HHPvHxQQTa4tQ8cxfdFFIlClSHpN7EIhNrjmQnReEOCcrvY8Rlsss5aTlikZucC4l5NNGdbUA5SNof2KB6ReRK5J3sw7lmxBCXa7HuTIMGMNax50tVjU9zQxO/k3T86kRY/cImqHOAzkr/h44+5OhJbbvikshCrjOMsN7tSlwwy8BY/bDX7VictaIho9ebLIUI2QAfP20M37XPeNI6gPUCLSvZm0Htnbe1hM4zXCLVEPbqIFANBQe/UcWzzTJh4zCV1aI+uJdDZcJUEQHH+SeNoQZUF6HjTyOC0CcZs7GWFwnRaOrK30UuLTCg9pPGrMwgJLWWU4fhbhVStmci42vgP9AtP4Jh81HOftAeDFrFGiocL1KhCxuD//iwlra9Kr5kTBTbRMiytXPNUgxlxK7gtsygtjSzmU6QVpEnynzvnfuXRcwnU1dtItIM4cATFhCDZfxXHCdp4+awsEAMb9AWIE3ID1HHNKWKYbi9ytWfWGIaN/O1mCiAXceMPoKGxRRiOkwhd73aGvoH9OS+jIfwKnvR/+DHfaYQ65wsUq5T8ZFTGmZO87MGbZ9WgPdJSYMaN5YVDhKDRZsmSHnAw56SkEJsTyuC7h1LKQxD73vFGdWUZG+KaFPnydOhmeBtTE4ON76c40y+2W34jBhimimXY/2jhi5JZUYS15NGoQAXvp0acIFKUKjQl/VpcHPzGCKxCJP8hQEMYYryqeSCnJJ8prqOWZ+s4eRxvssMC4wZ4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0AUz38F7v1gPzPautQVnIY1I+bZgoBvKFKZqYS+BXO7HnTLUoq4WOSuKBl9W?=
 =?us-ascii?Q?6Khe6GZusCbjIpLrULSYvOGnHYYIFPflelbB0DHcXs6wcfth6quq+54+4J7e?=
 =?us-ascii?Q?5bxtrDC+GMyoM1m0rPKijzZFA34xIJUKmj6B8zzw9NFkdyULt4Xtx3wEMfL4?=
 =?us-ascii?Q?E04TUqvQdd6W/WALV56VUNoE7Qr7xwuu4qORLtpZmIGxYpmSsy+ELc2hE66H?=
 =?us-ascii?Q?8MFLKBV+Kiw8OJnig2RoTf2+vum/78d2WPhyt1wuSZJpinjjgYQp9qQa8HQs?=
 =?us-ascii?Q?bxlTUF6yRtVIktWGl6SQ9aqC3oIxqgBS5d2UEY4W5XQtJu7QwDsZX4vnKOVg?=
 =?us-ascii?Q?L4uNd5Wqs81+j2qs3z928ZVC9GAKisFjXFJCpER+84r/0bXWUh8TNdheC/jc?=
 =?us-ascii?Q?kPAGysM84v4MfDY68uIrBFmkXDKGVSjXMEOkXTp/SEXIj6XLLhEi/YxxvJpm?=
 =?us-ascii?Q?9JSpVOEglyJmCGmQz7tNvY7hDlqpsiBy8h+45h6PDcZudTbsQ4KiFSjcaAEH?=
 =?us-ascii?Q?cK6YyjHG5zDt6jVz+0zmaTENfj7azzd3IoKPPTRsD5sHDQvvUQitxj4SWCr0?=
 =?us-ascii?Q?wYVGzrix5pGemX7LWX2rKbCGcgh+Hm6w3A/seNQBI1D53CMnnhOm4TMNf/T6?=
 =?us-ascii?Q?bkwFVIFIH0sX5a+LUd0+PJmjv0hbSVznlurawQu6Yv0D814LN9vdx34V9Nud?=
 =?us-ascii?Q?4o4dO0QMYcN2zZQ3bHAXi+0Ul5uHYw6pGdGJvLZvYMM/GY+4tCpbxxAGrhWX?=
 =?us-ascii?Q?YTWFORwu3DnVeZtJb+LqKBk4aGBDhko4djfhXiDa+2ghzLvjprAp8ux3efwz?=
 =?us-ascii?Q?SaTG4muOT60m/wVPAa92KW352CopakZvbfc6GMfc09J7N8a6tKOIJB6R5oVi?=
 =?us-ascii?Q?aOTE9Qz7Wa3ZUNFDfOVjTtqnvQnliMuk5IUAn3tsx/Q0+33God6le+OViHmJ?=
 =?us-ascii?Q?pE9N2j1rsARavLLip6n19/X/fSMH0Fg//ZatA0l/wEbriO6LyIe+Z/HdUUER?=
 =?us-ascii?Q?vDNtwmCWvWTt92RFsczbk5vGIqCivwew4otnwVw5fRWL/l8bu+qeoZ1snt79?=
 =?us-ascii?Q?s4vcp2SyBcxr3l0DPkiqxrTpMIwKM/tnrW8vcr0BtiyKO1XMMKEPjjk3oIO2?=
 =?us-ascii?Q?Is7KNukUUpEfSy5QMuMjwXWStm91aQunU0s9S4CJ9YG2B5dywDPUHvCQhMeJ?=
 =?us-ascii?Q?toQA85ukxZdqLBUGthc9WtuyfJIHxou7x5TPxCMDAuR8GNZF+ZgNv/k4B/l/?=
 =?us-ascii?Q?5fP/5HXGhzdqjTFBRUyCj/0WOyKoI8mzpupQQjKIbqR3CkjyYp86vJCFLzbU?=
 =?us-ascii?Q?ZcuDvUbH/Tqtjoq6B7CzRRkNOL2HznycVi1mbRjeN+gz7oPpYqmTCLc+gIwT?=
 =?us-ascii?Q?I3vgdDN6Ch9TBhJGfp9LiMpCMl8kzYB9Xhlxdd0h0pUZ2WQj8B7GBU/WRnLc?=
 =?us-ascii?Q?nMJ0o5oPyqBkh9Wyl2hMP2Tct/h2jIUCM+hhmrBrPBl4f6qdOK08vkIVc4ef?=
 =?us-ascii?Q?o+1UrZhuLfy05CXTGSzPBh0IH3qwPakYCoro7sU0BdiBAKfOFVQqS6kx4F3Y?=
 =?us-ascii?Q?KH38FugucOAw9edAMmQ+8n7Jr1EjbePZN8BCOyMte5yqmm6QEKOYi9SqBFUG?=
 =?us-ascii?Q?T2U0b5mZQnaCyG01OdQTgL1P6xj40DCe7udUwy/w4uL8AllomXvrNZBdgQ8y?=
 =?us-ascii?Q?+/WaxZMhP83gC1CHYkiirhvFHOecq3OmHDESsCU+L2f9PT1/+oUNc1zkDQOe?=
 =?us-ascii?Q?J75dFSkvAA=3D=3D?=
X-Exchange-RoutingPolicyChecked: N1gMpKqXNkSyO98lyMsYLgu0k1ugcDEPlO6MZaszR+pRYcfEl0sGBAeP7MEH1/g8jrPini+XhLskDuHNwdGHXhxsbeKQ0GgvOUGw9x/dsF704jEQdKii0g5MTAND2i40cbY+O9fliyesGsFDKH5jJUysap9rC155qrt9pf7J+0KakgmcjBsvrMxnZySQ4RDnWyuiTP9Xtt3nkUPRypqKRMPrZdiyskFHAgoRzq33GIvNUbXTsPoDzqtmoqPuTOpWNyb7obilP4kJWxxEc/LBBpPjOB+RNDLR+AGX+3VM7u0frkeMKvH2e9sXc4PdUO/irCMoviAsVylk+DmHEuitWA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 10af138c-490f-4589-e684-08dea5251fcb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:20.1071 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jeodHhgc5vv1ytAl74aFd84TTkiv6CUE9DZBX+/XscmiIrutkEbK7L2zmZF8MO4Mgf5ko6yEW8HBzcPP2SPS3Q==
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
X-Rspamd-Queue-Id: 20866485268
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

intel_dp_check_link_state() and intel_dp_link_params_valid() perform
only a coarse validation of the link configuration used by the active
mode against the available configurations (as constrained by the link
training fallback code after a previous LT failure). Even if these
coarse checks find a seemingly usable configuration, the modeset check,
which performs full verification, may still fail.

Disallow further autoretrain attempts if an autoretrain modeset fails.
Further attempts would just reuse the same modeset parameters and fail
in the same way. Autoretrain will be reallowed unconditionally when the
sink reports a change in its capabilities. This allows an autoretrain to
proceed once both the link validation and modeset checks confirm a
usable configuration.

Also clarify in intel_dp_check_link_state() and
intel_dp_link_params_valid() that these checks are coarse and that a
full validation is only performed by the subsequent atomic modeset
check.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 98 ++++++++++++++++++-
 1 file changed, 96 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index b446a3523b94c..37862b915cf6e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -99,6 +99,7 @@
  *   - link_recovery_autoretrain_allowed()
  *   - link_recovery_has_no_fallback()
  *   - link_recovery_mark_train_failure()
+ *   - link_recovery_mark_autoretrain_modeset_failure()
  *   - link_recovery_mark_no_fallback()
  *   - link_recovery_reset()
  */
@@ -1354,6 +1355,13 @@ link_recovery_has_no_fallback(struct intel_dp_link_training *link_training)
  * is no longer possible, via userspace modesets after fallback
  * selection.
  *
+ * Note that the error reported via this function is the error seen by
+ * the link training failure handler proper after an actual link
+ * training failure indicated by the sink device, and so the error and
+ * corresponding actions required are distinct from an autoretrain
+ * modeset failure. See link_recovery_mark_autoretrain_modeset_failure() to
+ * report a modeset failure.
+ *
  * Return:
  * - %true  if recovery should continue via automatic retraining.
  * - %false if automatic retraining is no longer possible and recovery
@@ -1370,7 +1378,30 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
 }
 
 /**
- * link_recovery_mark_no_fallback - record that fallback is unavailable
+ * link_recovery_mark_autoretrain_modeset_failure - record an autoretrain modeset failure
+ * @link_training: link training state
+ *
+ * Record a failure of the autoretrain modeset before link training
+ * itself could run.
+ *
+ * Note that the error reported via this function and the corresponding
+ * expected actions are distinct from an actual link training failure:
+ * the modeset failed before a link training attempt could be performed.
+ * See link_recovery_mark_train_failure() to report an actual link
+ * training failure.
+ *
+ * Update the state to indicate that further recovery is to be delegated to
+ * userspace via a regular modeset.
+ */
+static void
+link_recovery_mark_autoretrain_modeset_failure(struct intel_dp_link_training *link_training)
+{
+	if (link_recovery_autoretrain_allowed(link_training))
+		link_training->recovery_state = INTEL_DP_LINK_RECOVERY_AUTORETRAIN_DISABLED;
+}
+
+/**
+ * link_recovery_mark_no_fallback - record that no fallback is possible
  * @link_training: link training state
  *
  * Record that no more link fallback configuration is available.
@@ -2021,6 +2052,23 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 	 * FIXME: we need to synchronize the current link parameters with
 	 * hardware readout. Currently fast link training doesn't work on
 	 * boot-up.
+	 *
+	 * NOTE:
+	 * This may be called from both serialized (locked and synced against
+	 * async commit tails) and unserialized (e.g. HPD IRQ) contexts. It
+	 * uses the current max link limits as upper bounds to reject
+	 * obviously bogus values, even if those bounds may be observed in a
+	 * transient or slightly stale state.
+	 *
+	 * This is not a full validation of the link configuration. Even in
+	 * serialized contexts, additional constraints (e.g. source limitations,
+	 * bandwidth checks, and other atomic state dependencies) are only
+	 * verified during the atomic check of the subsequent commit.
+	 *
+	 * max_link_limits only provides independent upper bounds for rate and
+	 * lane count. Callers must not assume it is itself an allowed link
+	 * configuration. Although that happens to be true for now, it will
+	 * stop being guaranteed once fallback depends only on disabled configs.
 	 */
 	if (link_rate == 0 ||
 	    link_rate > intel_dp->link.max_rate)
@@ -2151,6 +2199,22 @@ static bool intel_dp_is_connected(struct intel_dp *intel_dp)
 		intel_dp->is_mst;
 }
 
+static void queue_modeset_retry_for_links_in_state(struct intel_atomic_state *state,
+						   struct intel_encoder *encoder,
+						   u8 pipe_mask)
+{
+	const struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		if (!(BIT(crtc->pipe) & pipe_mask))
+			continue;
+
+		intel_dp_queue_modeset_retry_for_link(state, encoder, crtc_state);
+	}
+}
+
 static int intel_dp_retrain_link(struct intel_encoder *encoder,
 				 struct drm_modeset_acquire_ctx *ctx)
 {
@@ -2201,11 +2265,23 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 
 	intel_dp_link_training_set_force_retrain(link_training, false);
 
-	if (ret)
+	if (ret) {
 		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] link retraining failed: %pe\n",
 			    encoder->base.base.id, encoder->base.name,
 			    ERR_PTR(ret));
+		/*
+		 * intel_dp_needs_link_retrain() only performs a coarse check of
+		 * retrainability, so the modeset commit may still fail. Disable
+		 * further auto-retrain attempts in that case.
+		 *
+		 * A sink capability change may restore the retrainable state (see
+		 * intel_dp_update_sink_caps(), intel_dp_reset_link_params()),
+		 * allowing retraining to be attempted again.
+		 */
+		link_recovery_mark_autoretrain_modeset_failure(link_training);
+		queue_modeset_retry_for_links_in_state(state, encoder, pipe_mask);
+	}
 out:
 	drm_atomic_state_put(&state->base);
 
@@ -2229,6 +2305,24 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	if (!intel_dp_is_connected(intel_dp))
 		return;
 
+	/*
+	 * NOTE:
+	 * This may race with an ongoing modeset updating the max link limits
+	 * and, with that, the link's retrainability, so
+	 * intel_dp_needs_link_retrain() may observe stale state.
+	 *
+	 * This is harmless: stale params captured as valid may spuriously
+	 * allow retraining here, but the decision is rechecked later in a
+	 * properly serialized context.
+	 *
+	 * Conversely, stale params captured as invalid may skip retraining,
+	 * but that can only happen before the modeset has completed its own
+	 * link training for the new, valid configuration, after which the
+	 * link state is rechecked.
+	 *
+	 * See intel_dp_link_params_valid() for capturing and validating the
+	 * params.
+	 */
 	if (!intel_dp_needs_link_retrain(intel_dp))
 		return;
 
-- 
2.49.1

