Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFl6EReu8GnwXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF11648540E
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:54:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38B4810EC16;
	Tue, 28 Apr 2026 12:54:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ATr9HNcI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 802E310EC08;
 Tue, 28 Apr 2026 12:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380876; x=1808916876;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=l+83wPyn5oLOSGghIQEo00NMf/W0CrXM3SF8wv51Ods=;
 b=ATr9HNcIuI+b/n057o/He+YoI9h14mH9ljlwk1LeDlNeaxdJHFVBILSx
 r3u5S88PLXizp85yE9NOEyeKnhUv/1jGvE6y742neoHpTrWGGtEdZlnhx
 CHsyTRiZoeqORyVgli0mWT9fVMzsvwjo6EeK4mkZBoheQO3LoZFKlN3p7
 xIvqwO/AyY8jNCj0orseQJ3qdf96JvnePiuRAW5VB72QvDi3ryUqOqlGs
 MWKZtEiIhTkHYtvpsHWxZ1KcTdBulqmHFf5mWfr2fUNZumpGyEKulnm8q
 uTY4MYFULhnqYddQuB0LFT4byhKQW73XBZEwS1S9ikQKjUpzJbQ75Ojb4 w==;
X-CSE-ConnectionGUID: FjMMF+tPTbOoNKmIwR9Hvg==
X-CSE-MsgGUID: AiwXpNWlSa2TYTcvW28M6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398700"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398700"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:35 -0700
X-CSE-ConnectionGUID: vDIa7vzNRaWEDvp2IpDYXg==
X-CSE-MsgGUID: KVdbZjjtSv+QwxDO0lRN1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911483"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:54:34 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:54:34 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.29) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:54:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QzX4XN889DCf/dUpFTB8ZlaFMlX6EJo+JgCgVTpS4Cc/gnkG2q+KXDlQ84JowFJRYblCtAyjoEBMMqPfOPv12dF8pktV+LOD+RbyWVyizfFYVyLezt/MT36NLWvjEJcDdMAT2Z/TVictQ3iIf13Ycb6IXiqEoM/lxslvKvLiW+YRQt41okgRQMXsaD0TieUHbam2jIAjYcUzU5YxVd1ZHno0+NQRuvE0hOW8vcqqP4v0Qj69vJL31XbsmnipfYw6AQzDLkTSnr3Zwi/hiZQlPQ31nwW2XnJcmj57NSZNqMySizT2vMklJp54YIKOz7Fbph77llB1RaT7eVu3DZMIjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b1Juuce13FUsMz8M/63RMcjiyYEfaWu/CE0050WlUcU=;
 b=fDj6sbBGLjwIeMN84RINz47YQ/H6cxXc8YAxikfHMcKLjMKtoQbIk57XI/Wa9YNHY7AYH04gLPgj8dUhKA6zfnfoKUS0gEeFJ9TNaDOOsEaP9R3gkA+VXJS6WOHRGn6a11Rc2phsko8lgt5aMDPzPKcwPR1rLOxiUtvWfMI0k1yCoJim6D3+G9W24xCbkIWLfl1r0v9J1GXWyvyyFv5wBTwqrAQRioYatjLHm3xctYsX67zxoz+g+ihXMrZoar5iDAQR/1lZOBz86IvHteszkWTvVPV/4Ybbp5z7Q4p1YF76JF+zrTZrB6VL0jNKXtvhSQKgLBICF6BpJP4j92NHPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:54:29 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:54:29 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 056/108] drm/i915/dp_link_caps: Pass link_caps to config
 update/lookup helpers
Date: Tue, 28 Apr 2026 15:51:37 +0300
Message-ID: <20260428125233.1664668-57-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 6ecf8051-30cc-43d6-fdb0-08dea5253ee6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: DXmZ5RyG8gZ3zKBn5oOnkBkF3r/+VsUbiqqDqCKXR2jEFMaOS6Egte01+DTPOHt+lK8O0A48Mad7VTQ2RRmePapedUS6ddbYVvekmnxEaXFcQ7tPyOEKrnAaqdrRL2Ngw/IkvsXwR3cto8xLf8/MBEM+c1HcB3M3E7n5JP+jnPJDyPVd1b4WYhPqKshPSkcOYPom5685X71mT/I00vp6qDy0TGshqqmAGnhs11EpmcnaVs/qHTSuqULES+63HIBBxhSVDsIW8aIdBvsYI3Ks8Y7zckUVRCPAXfhru6FbQKp4Vn8MdQ+vYa9LQAQkzEhOIEhmOD/EzH1VM7ejsE1GkAZhanmFjWds1zcecOK8ntBDYYKwwOplKsG+qvsV3PWYC+cnJN7Jx4omQ73l+AcblhqKKCZwJzskGbtWVwJ74ZiWKYzQd+bd3DxD/ooninhYM6o0jL52A39v7+rc9hLmLVWg+aXmph5pKa2szh62jXvPxec+5gAgUjh/V+4XwVV9nvAOxwEVQyVb8tS18ZcTGAa8lVDEweQ8nbP8AUX89jvi1Xlb9wbLpR6c6iE4xMy83auKue+FGKYaCyDdKN6QctH/wjqyI4+YVs4HFMzy16peN1f5OjBPfg4/AALOYhVUSwOotJfvkBUcMcAf2V63z1iaVMegO0qNNKHM//lqR7DRBmrr/ZN7ZwC/p6pMZHdWGXZBsLLiFR3lMni58oapaQVqpu1aMtMAlweB7LekHsY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8WlCq0Mk8IxtaFf+5yS8nEPm6oAjab6+mSLGXm9ZLqtR7prlcoRmrQgfLqek?=
 =?us-ascii?Q?IM9aRQ5VRsf6ccJWelb15CFPBfAm9I5PZnxUiEgdwLA8V2h4BeJfG62C1CzR?=
 =?us-ascii?Q?4zGnBXYCYNtslR3AKeKo7fIoVC55ApV7C1md7avADuMP/jWZDpUNgjsROxxC?=
 =?us-ascii?Q?stwLk3QWldOeRqTp6R3z+CdTBzX5oUHR3wYHIfJvqzBrxB+ca7lpz1ShnGNd?=
 =?us-ascii?Q?4uq2Sd5lF7vsBqml2DxqOG4Osc4o1wk8TeG4loRq6M6L+bJ5RD6CKBN6qZL4?=
 =?us-ascii?Q?8VvxCCKBUzHylLzXjp7pTNpkMxKJCFfxhyoC9FiFJakeidgPihHkFLG2O0yb?=
 =?us-ascii?Q?VUoNft18SeS4CrlKHJGTPv+eQKM3pE5dKHosGlpM99PANPbWde97Wei8QaTZ?=
 =?us-ascii?Q?VXLmuogBzgXTLeLTf8U5e0QARIEBSdZhN5467+xWt/knQpj11Y38ECpTckW9?=
 =?us-ascii?Q?D+AtPTHQaNg9YF09peCrj79H8Sebk7NED6CID8Z0fQDNXsaCmCfFVGAtGMqn?=
 =?us-ascii?Q?+Mz3FsVXtzPut2fBdGRJEn5gJVMe0dJIN1Oo5R4l08mlH9QVlOGL/opZEbQ9?=
 =?us-ascii?Q?ExQqJ1hh+F486nyLnfjlZ3PeYaTTLGBx8DEz6FhT/oxczFNNp3DjnRzyp7CZ?=
 =?us-ascii?Q?WdHgH3Rr12bChgnnRg4af48PNaZQLuNSYcj6hop2XxWz1UBkjm0UrJQo9RI4?=
 =?us-ascii?Q?Q/DOq8/MzwI1wmda7W++RbzYAa6r73VeYWCejiLywsy2hSFfN1CntOMGVrou?=
 =?us-ascii?Q?2Sul5WKtdz5pE9R0IsuAw3gsriCoMXxO8WHWWHdHeWwV7bLIpIRRv8iBu42p?=
 =?us-ascii?Q?dbEtBoBKb8nPjMMzqL8MghrZTMt7krM5k4ZjdJopS7pKBjdhXFIOEXWf3dpT?=
 =?us-ascii?Q?Bg3CUChla570Olh7w07DD43JzBtmb89507gd2+eYyDJ2sv/2JLFrJQoWNzxJ?=
 =?us-ascii?Q?i1i2FV9uQQX8pAEoNzmPEIoVjr70NfvYYWDqLvlwc9k2woxnzrqbPh6NbiD9?=
 =?us-ascii?Q?uqQawGnPo9ETBUnnLs3Mj9hXru2c2jkVmgXdQtrnUoacj/OoaEWJeYkdkpNW?=
 =?us-ascii?Q?qAJEHtL6bz7Kh6QiRQl3GgDJ2buRcpczHA08Em+RLIbrUM6Oz/FDW7hS4xW5?=
 =?us-ascii?Q?ff/ipCTb+4SHhN6qhUkQ5NHII3HrCsdJ45BBACbPQajKKLdUZ2+KeQhD7/nx?=
 =?us-ascii?Q?XhM8ZsDw5kus61tOv0TDcRxRoKn3N9SmErYNXcx3HhPDhYIUopP/cKOTgUDU?=
 =?us-ascii?Q?H8px9OnSIoPZySOeTIapGx8NRadGs8ndzMWd1v0pTVe/Qf7jNjufZdsBtjjw?=
 =?us-ascii?Q?gdORY51wYz9TWBia3fR+dL6/ZgnKBuJ65/hIc+Z9hVyX2NLoQLptaOoa7e0h?=
 =?us-ascii?Q?C+i3nQoLdGcTCsSYHWOGD36NAKZg0pGvrl4W07HGh5zcNZp8difD5Oi0VMuv?=
 =?us-ascii?Q?iaJDHyrKxxWX5wmNbw80hoshaL74o7uMeFHr0YNv61NoPHAUpwSI1aaaEO6g?=
 =?us-ascii?Q?E5gTRPAsEov1IK4VldJb4zEW5Gqeei0jOvTvixX7LYj5QQOiE6ActBZico9J?=
 =?us-ascii?Q?5xdCSYyy2SvmJjoqh5fvtEEVp6KW0O/CXgHLsjj0UDN/d7aUewpy2k4YeRtI?=
 =?us-ascii?Q?QHGvZOh/mrJyroxSv2qBeMr17NsBfjEtWaT8Dy97izUwyCP5vxTBSWwaeY3Z?=
 =?us-ascii?Q?Mds30TYHNmsmMx0o2fLOLlDQvL/KlJULTORdXVxeO2p0566t/Nf5zIJWv4GQ?=
 =?us-ascii?Q?USBZ4E+Lww=3D=3D?=
X-Exchange-RoutingPolicyChecked: anpT0au8+xsKGlvxFKu15oXdY6reK7iHR0y0dN1jUc5SQo3prf+DDI6X/f6VGytxyFEZ2Kw6d7MIVtgEZAxvVzg9uioMKv5LQPudYDnyD0AFQMpIYBWvyr/DuYKauN5Twc7JWmvRA5H9DfSCbQxGrtQuCSspvKcKrjDbqXh9rXAHm9FEXjlyXtZJVeD08/y4ZumB8FSgYo/ijPq7Ux90V90FbkB8uM1Q7lGx6Dw+yjiI+hbe6S7FQbZW0VDyC1qadZv6v2gdJIAqrhL+VZMvDeWvQkxL7zMd0+9OaUHdif5vPYL23Vo5gstGt/1gVJq+km+AD4ANE8bOps5Mk6equQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ecf8051-30cc-43d6-fdb0-08dea5253ee6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:12.2977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DcO5rts+zbfOcNnfJ7gdWw9BcKbX7SQsm2YCNvqeZkM+Om013Iem3csylihrdXvR+8SOG5UIJ4E5vSBxYj9HCw==
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
X-Rspamd-Queue-Id: DF11648540E
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

Pass the link_caps pointer to the update/lookup helpers in
intel_dp_link_caps.c, as it holds the state with the relevant
information.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c            |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c  | 14 +++++++-------
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h  |  8 +++++---
 .../gpu/drm/i915/display/intel_dp_link_training.c  |  5 +++--
 4 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index dd4c03893a69f..a3f293af5dbfb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -697,7 +697,7 @@ static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 	bool link_params_changed = false;
 
 	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
-	if (intel_dp_link_caps_update(intel_dp,
+	if (intel_dp_link_caps_update(intel_dp->link.caps,
 				      common_rates, num_common_rates,
 				      intel_dp_max_common_lane_count(intel_dp)))
 		link_params_changed = true;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 1f6e391838894..fc569092a4dd6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -395,10 +395,10 @@ static bool current_common_caps_match(struct intel_dp_link_caps *link_caps,
 }
 
 /* Return %true if the supported link parameters have changed. */
-bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 			       const int *rates, int num_rates, int max_lane_count)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp *intel_dp = link_caps->dp;
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_config old_max_limits =
 		link_caps->max_limits;
@@ -470,10 +470,10 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	return link_params_changed;
 }
 
-void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
+void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
+			      int idx, int *link_rate, int *lane_count)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_display *display = to_intel_display(link_caps->dp);
 	const struct intel_dp_link_config_entry *lc;
 
 	if (drm_WARN_ON(display->drm, idx < 0 || idx >= link_caps->num_configs))
@@ -485,9 +485,9 @@ void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate
 	*lane_count = intel_dp_link_config_lane_count(lc);
 }
 
-int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
+int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
+			       int link_rate, int lane_count)
 {
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	int link_rate_idx = intel_dp_rate_index(link_caps->rates, link_caps->num_rates,
 						link_rate);
 	int lane_count_exp = ilog2(lane_count);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index fed8b0ca72ff2..992917505b0d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -22,8 +22,10 @@ int intel_dp_link_caps_max_common_lane_count(struct intel_dp_link_caps *link_cap
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 
-int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
-void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
+int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
+			       int link_rate, int lane_count);
+void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
+			      int idx, int *link_rate, int *lane_count);
 
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
@@ -31,7 +33,7 @@ bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
 				       const struct intel_dp_link_config *max_link_limits);
 void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps);
 
-bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 			       const int *rates, int num_rates, int max_lane_count);
 void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 5e60621f4442e..9da8892a80df0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1772,9 +1772,10 @@ static bool reduce_link_params_in_bw_order(struct intel_dp *intel_dp,
 	forced_rate = forced_params.rate;
 	forced_lane_count = forced_params.lane_count;
 
-	i = intel_dp_link_config_index(intel_dp, crtc_state->port_clock, crtc_state->lane_count);
+	i = intel_dp_link_config_index(intel_dp->link.caps,
+				       crtc_state->port_clock, crtc_state->lane_count);
 	for (i--; i >= 0; i--) {
-		intel_dp_link_config_get(intel_dp, i, &link_rate, &lane_count);
+		intel_dp_link_config_get(intel_dp->link.caps, i, &link_rate, &lane_count);
 
 		if ((forced_rate &&
 		     forced_rate != link_rate) ||
-- 
2.49.1

