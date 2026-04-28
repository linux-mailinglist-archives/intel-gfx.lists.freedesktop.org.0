Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLtEEbCt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DB9485210
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6362A10EB90;
	Tue, 28 Apr 2026 12:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vl3GT1C4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A61310EB8E;
 Tue, 28 Apr 2026 12:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380781; x=1808916781;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ZUGE1NCIMT0TzzLsXdmhQa/83Ma5oqrGq5JAwnosbiY=;
 b=Vl3GT1C4tCIROIAYZPE2l7jtDd7QL3OIcVJ3HUFd6i13ve2RdEVQuZNu
 eIVLaKJ5keNMmkhm7D5mF9dVbRJyxCzp6nmXvt3ni9MFibTr3F7GCbebE
 10dFKWXM/DlMBdFivnA5YPDJkuA+jR6KmOGnT1LBCqsfGts92wd8YccUm
 bg3FXd2s/wkp+OmbRhdquKMFldxnIZuOsdOLXxwsmARz7dFEt/TuVT2wi
 5ZzllyKumEVnczedh3+7lnclc1/2+HpDwmKym6pQt2nEI4mN7A+pwKK2C
 ocsk9Wb8XX/RwCfNd+5/Taip7BFOonbIKVevAMf4ZdEwSxP1YAXMXqVAB g==;
X-CSE-ConnectionGUID: 3jVZVLYYS7CD9sFL7fGk7w==
X-CSE-MsgGUID: CtUxIg36R0m4/Enfjog2FQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398570"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398570"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:00 -0700
X-CSE-ConnectionGUID: ycobzkiLRZyr2SENh+cm3g==
X-CSE-MsgGUID: 8PGU7FIRRn21q+BKYbLHeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911284"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:00 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:59 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:52:59 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.47) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AEA21S4QS/M0mnpGFQtmq3oojyXIqO3xc4/me/neUMPkiHpzYFyb7KxXvDvanZc/zVTV4C9AxVemV7L0eqvNdhfZt14TDFixQoHTauyGMPsYMQTYADl3yosXuxS6rWlFbfJSpjuaIRwXsZjFGbionJxVIojGt/uLIZN68j1uQwiz+gwBcf+f/lXKqsAft5WhlIHqVJajSSOCDIqfmSyGVib4pfarPF3GPNl/mxh0CJBOC+sysE4ke6UIQB6nkYuXU84VqFCCExPv05fNAjP90yna8ACwoS0usau9vAoq7ItTimabuyf/kX4juDfEDo+kXhQwM0MAEupWr2p92GYEFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bOeKaRprXDSIUestxyup92byfT5BAfHKcA/WCN7NyLc=;
 b=gdNNDhNgC82M9dVT/WIlI4ZtIt8Mt0Xo56E2fLbUdeMlv1fCt2tLSuImitiI0IE58V9hHlJq1UhnMKSCZ8LHoiNvX3yXahVGiugduB2KHoyxbADdeIHELIGqYxBpuIfKZQRfO7RAt4ZhzWp9r+448WocaT5/5h6pT188+G29lfjkd5A/hrTPbQnJHJ+QSjI8c3rBJBbyjonvezlpJhnSQUeRQs7fHXVrLgeubRGV56TV9ovC7G+f/k3MMgRbOdv8ZWo/I+BPhWiUnPr5VX+eqIIwmK8c39as1GbSan0ZtFbDSnIxkUgEJpId9eAzlaTtnTp917ugi5u4DFxbnjEz6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:52:57 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:57 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 010/108] drm/i915/dp_link_training: Add helpers to access
 force retrain state
Date: Tue, 28 Apr 2026 15:50:51 +0300
Message-ID: <20260428125233.1664668-11-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB8156:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b3aa562-caf7-40e3-d2b7-08dea525121e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: r/ELkK134E+O4+mpuiD/sj+g7Cp1G7/aErVyOw0Ypx6UXMOYYmPpEeIW3UFcks4XWtBDy5XLLLliNMJvMd8uXNxI85vaV6lFmRqr8Y9qjXY6XPPK1CqWTNDnBmQg0NGugEJ8Qt+gL0pnauaQWG3JEgIYTQnYrI3Wl1vKMJPbhLiUb+BVhKOrFEpAi2zkfpkbYJQ2tr3kw70wcKoY2wsirGjCiiWDNr5kdhJt3TldyHxaGxX+zkr4zrAXu5g1ZlX1FtBGDJNJA9Dgao3LP082xji0MAu7GGEmd2EA6K7ISTjM+NrDpA7SImhtXvI2lzLFfnvF9L51TfHzHng1u43cudd+bWI+9ARmrJ+jN6KqI4JpiK0M2Fyi+GszW7WfoQm2bGe72JNqUBcfwodV0x+mTd6MeD9lgFSUa3wqE/rP48bAuDCoFEf8+dmXCIwXpmUQEApuIE2pbkNlKtjhYjOabOCbz73FcuI3Ub77N+vNkrcWF1JbzPi3a77P+R7Lynczlan4kNd0Q+kzuspA3fWRkpF+TlD83T9g4/Q99vOIQafoUdnhSnheJmq2eL1EekwEecI7n2YfETtaIkncXMkrc+ow4AJn6L0E2AHa3DFUQrnrv8fzzXLaee/nF6S20YkPbfnK3g/KhExst+zAymNCTFSU5b5E/baJ0F8JWgTUQ/5NahyV18Gaq88NjABzyZVY/ec1hzunfwDJb9/OwQfMWAoyEdwjX2qI2tgqOQzxm50=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5HiJ4oozRPD57B3BfELcosZmvERq5NbYLDRy8EtqQLDr+alUP5fn8UtMxS2J?=
 =?us-ascii?Q?jjjaesP/9rIPjIuFfo/gv+NUad1/c0DbaLvL+S4UQmO9CdOO8J/lP7CDUzab?=
 =?us-ascii?Q?GxciOvGk7iN78WUGWHAUi5MxekJamv6m3k3ErSU8RuJLKld/4p15G3eKGTXw?=
 =?us-ascii?Q?o0ZixIfJpneqs8Vej8tHAOKunQJ6EpYefoyG6h9GBNv2VE8qaJbTfvnodchy?=
 =?us-ascii?Q?oy0Vpeukvhg/DS6UCiayYnjAElkHSpPfBcylTq4O2yzJP42pc/l+bv5tqzBW?=
 =?us-ascii?Q?Brc/0rS9/uxi8/AahaDKevWG8GWtM6ILVV+ZZTCfMTqgKhlIKwADGTg0Xfr9?=
 =?us-ascii?Q?aoQjnh0T4ZmggYrJffhysFIkZMGBSCihtmSgo2iSXUHrABXIgI+Src4PD/nB?=
 =?us-ascii?Q?ENDAvTGLRHX65lJShNJs9vmggam57fML5aBQlEgc6ld3L0uD8jjpTL/h+RIo?=
 =?us-ascii?Q?/4FIO91sIgbbIBEaNuTBKXn4VIeMVRCcwD8LGUJ5+04FYk2Tusd83AtrrX9O?=
 =?us-ascii?Q?ug25uhmNmeucIHzvKYxjL77QqFIeMetdJnAVvBpO2blsjkY+baubeOBob4kv?=
 =?us-ascii?Q?r9Um+zLOdg+7iUntJiqFVoiWQumCRBjUBw6t/ea4ukbzjR7MI+CnLUA7Y6s5?=
 =?us-ascii?Q?8X+btIkW6zXKuRya3TwrKOlH8kpk1vgQM9hVKtkZid5C2y2Sdk1rBaIdvJEo?=
 =?us-ascii?Q?gTuYfSoAQmUN6LIED9gD7WcBPVL2khywRAXszaRgODtDij49aLzKDSEgbIXi?=
 =?us-ascii?Q?dSUD0sQP1RZ8MMIx+gD1Ud8weFKpwivH5sbcCBjNrInFlAmyno5xm1L7WqmP?=
 =?us-ascii?Q?hlgVn1UBVcVTwZ5dvLxFI41vqvYHOHLx3PBUw+9guJsP8JmjapVxFAsLfxPy?=
 =?us-ascii?Q?ByAbEgY9BYd0C8uPlcVlspO63/juad6GlLKlK1XlzIhKTbRJeVzqE5KAxbw5?=
 =?us-ascii?Q?3vVkKpqWKva5bhQZMy6ZnvOacTj+8/DsBagj+Hug1KaJ+1wYD9GgvPNwd2oy?=
 =?us-ascii?Q?7hxVEfRt2M4vvBtF7xpM35njYgUSGWnSOK2dNecpRkgvCO+15PHHVpZ/t+y2?=
 =?us-ascii?Q?XfBvtpiNSRiKcEVyis3hh8kzaU4W/A0mGCGIuVaxzdfC3mgOCUapV7QftUkV?=
 =?us-ascii?Q?E0VBPchRLHgn6L/cM9BokpyGfp1y2RnwUwqj2Hnh67WbbJ1XyJgX+x/JF4AC?=
 =?us-ascii?Q?zHHO2ayp+xMbv416eeqZ/Cl4m31jAVFibVOHGmxQLtjMwUL35gjhAwlN1cyx?=
 =?us-ascii?Q?qo4iKdwpYJPiBBD9HsqM84g8MKKj1LQM7Xhp1MiH6YAAidlGPY70TyR7aMik?=
 =?us-ascii?Q?EovBaJNxkQ02FrX/hQd+nf5BlvuQKyXgJTlfpPI/YCfeWNyYbLGy3X3H8f4m?=
 =?us-ascii?Q?kZ+gMrYo13p58iDnTZxP8j3m/pafV9cTXp6NGfJcpxPO/04+6PFLLunyBoDN?=
 =?us-ascii?Q?Hyv+DRzwLN8ulRP5JdU3OCRqJVJyKt/+EqjcGqKqfJuC227ZCDLLfbycq+7C?=
 =?us-ascii?Q?loPi6xvYGY+Dob1Dkm9ism2BUnOyXZTZzkJ6g8YoKQohNNRAFDl6+yhjXgCR?=
 =?us-ascii?Q?ua3QYdv9RC6nPmdMmulYpq+CYif9iyWXdsaWIpTwBaOXOrZQgXHER3tQUmY6?=
 =?us-ascii?Q?rfq7piBSBg4+ZZ64JvdkNEif/JFsfIpeu+zmztcQ85tf8De35xWO7CuZOglz?=
 =?us-ascii?Q?zMTehf+yM9qz5HnfU7G95VHlHVIBk71cid7WjaQJcihlUoiI4BlrFb7jwVRZ?=
 =?us-ascii?Q?PpTLYSHl3Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: Hn+b4M4YVJUTilzBJxgwAJjjdzDiXcbFXfXD5n219SkWjp+YOgw10cAkBvv53lf1QkBWqTRdoABcBrInz/MBp7EFQs5MOyMn6bjs5ULq4IWQwG/zCQgCVmmGj+IjUN4sLuTV3VP9o1BAVyavgwfJgb3aIoxFeAyvD2KsiM8V0HOboH7TeTmk+SSheVmUnFWdNK72eIJflaAGyf5ibla6ylAwxZ8Eqyw0GUJ9qys72u8hbxXiHh2g0vvLSdedEQPcut4MSSFTZGLGCCloc2DHDCNCddnHW6D3kuLpmmgzkrlIMhQVuWmvgBOcEyo0iI1vs3WPpTB4oC7yrj5lldiq4A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b3aa562-caf7-40e3-d2b7-08dea525121e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:57.1513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2h+DxDXD2bpbmOGE2NaWfB+eBNFX3RRfA1KQa2yk5qRHhwmzOCVm/ek/uJ9F3KinbrkKpJ4hxBm3lKJMRmjjyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8156
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
X-Rspamd-Queue-Id: E6DB9485210
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

Add helpers to get and set the force retrain state in preparation for
moving the state from the DP struct to the link training state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 .../drm/i915/display/intel_dp_link_training.c | 29 +++++++++++++++----
 .../drm/i915/display/intel_dp_link_training.h |  2 ++
 3 files changed, 26 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3821686484483..2ad65ef0f697e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5640,7 +5640,7 @@ static bool
 intel_dp_check_mst_status(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	bool force_retrain = intel_dp->link.force_retrain;
+	bool force_retrain = intel_dp_link_training_get_force_retrain(intel_dp->link.training);
 	bool reprobe_needed = false;
 
 	for (;;) {
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 1762e507dd1ec..72e023b733b33 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1929,9 +1929,25 @@ intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STAT
 	return 0;
 }
 
+bool intel_dp_link_training_get_force_retrain(struct intel_dp_link_training *link_training)
+{
+	struct intel_dp *intel_dp = link_training->dp;
+
+	return intel_dp->link.force_retrain;
+}
+
+static void intel_dp_link_training_set_force_retrain(struct intel_dp_link_training *link_training,
+						     bool forced)
+{
+	struct intel_dp *intel_dp = link_training->dp;
+
+	intel_dp->link.force_retrain = forced;
+}
+
 static bool
 intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 {
+	struct intel_dp_link_training *link_training = intel_dp->link.training;
 	u8 link_status[DP_LINK_STATUS_SIZE];
 
 	if (!intel_dp->link.active)
@@ -1948,7 +1964,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_psr_enabled(intel_dp))
 		return false;
 
-	if (intel_dp->link.force_retrain)
+	if (intel_dp_link_training_get_force_retrain(link_training))
 		return true;
 
 	if (intel_dp_read_link_status(intel_dp, link_status) < 0)
@@ -1990,6 +2006,8 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_dp_link_training *link_training =
+		intel_dp->link.training;
 	u8 pipe_mask;
 	int ret;
 
@@ -2017,13 +2035,13 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 	drm_dbg_kms(display->drm,
 		    "[ENCODER:%d:%s] retraining link (forced %s)\n",
 		    encoder->base.base.id, encoder->base.name,
-		    str_yes_no(intel_dp->link.force_retrain));
+		    str_yes_no(intel_dp_link_training_get_force_retrain(link_training)));
 
 	ret = intel_modeset_commit_pipes(display, pipe_mask, ctx);
 	if (ret == -EDEADLK)
 		return ret;
 
-	intel_dp->link.force_retrain = false;
+	intel_dp_link_training_set_force_retrain(link_training, false);
 
 	if (ret)
 		drm_dbg_kms(display->drm,
@@ -2364,7 +2382,6 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp_link_training *link_training =
 		connector_to_link_training(connector);
-	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2373,7 +2390,7 @@ static int i915_dp_force_link_retrain_show(void *data, u64 *val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	*val = intel_dp->link.force_retrain;
+	*val = intel_dp_link_training_get_force_retrain(link_training);
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -2395,7 +2412,7 @@ static int i915_dp_force_link_retrain_write(void *data, u64 val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	intel_dp->link.force_retrain = val;
+	intel_dp_link_training_set_force_retrain(link_training, val);
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index c1e57c6aa3a7d..f80e979f7436c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -58,6 +58,8 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 				u8 lane_count);
 
+bool intel_dp_link_training_get_force_retrain(struct intel_dp_link_training *link_training);
+
 void intel_dp_link_check(struct intel_encoder *encoder);
 void intel_dp_check_link_state(struct intel_dp *intel_dp);
 
-- 
2.49.1

