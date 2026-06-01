Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OE+yOVBTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF4661C9BA
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1293E1130D1;
	Mon,  1 Jun 2026 09:39:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ilew3wmG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 840211130CE;
 Mon,  1 Jun 2026 09:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306764; x=1811842764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=EHcRMJv8PurvLLTADSlSYcSTUtP4+MaVbljMHNGoV48=;
 b=Ilew3wmGRm2YLFPnhlbbXR4kVw30kQIuTklwZiT4Td0Rw4Xjn8v6a1sm
 mL3IeSoD7nRj4oRU3vAowNZcQuxQmm0BdGg/0SSOuvVqSIU44sBi+yFU1
 2g3+ue7OWcTV2ZQOMpQuFhKWsnpvnyCb/XKIEJ5I0Ev9+CJ+XadebbPDj
 yXhwyREMhSocTxzTZL7GwvYK3M8d+3wbqXrArFORn5dkqpxTQSw7Exc9Z
 sBIy6GbkHYVyQ5qoSJVhfZ/j00CGxRvaATO8W+EoPqBhm9+dsMs+DuA7x
 F5jpMBHd4qcQBSWtH0L85+LbFi5AkCRMFQjKlyAtQlzg5aL79HH5qtlA7 Q==;
X-CSE-ConnectionGUID: TBZlB/w1T0iftCtoIYhfBw==
X-CSE-MsgGUID: Ci8uqI5eTCWBWqjEnC5E/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80200595"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80200595"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:24 -0700
X-CSE-ConnectionGUID: mm/TFrq6RWmenHliutpcEA==
X-CSE-MsgGUID: Ku34oxgyTlyON3+YLTRNQg==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:24 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:23 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:23 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EijUzkuoj6PZYP8OLIfCbZQ7p9tP/RC3NS4taYsXxdvF+h16C9uv8prcy1nmPQrsLf2NX1qsLeP4ZKJUYXojzx7YSXGW1qsnhKyYpDUw9jN5WDfG7c2lgHOYCv18HnU/Faq8WTGupXFAy7L+zUnnG+fwxsrBYAQp6Qnlje8WD3FAyn4vL+ZZPBIuUGFD7mxwoDN4h1KEPVkBQLyFWSK1JtDEKuuOSVQw+oXwSWgFSxrVv1fh107uR1V4VrqXCfURXf/+oFxSFX7bAMTRr1xDABhfa3wH/HxyfuXX2yuOTtLpfiqczr+0AkOB9e8FL7fkLviQgyVrTPC39zgAsirufg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DzHAYAJCKvDhrVG0JKtN7XrV9RNI1vjICapeaLg4Jl8=;
 b=ZAsggJn2Q40GFAL5D6ZomqB7swRqqAe4SG89lGTyzNEObEYk+HYnCzIZK7AaFENfVwFNdvLX/U3cQwZ2qZVJhnh161kR8oTLJjqlR7p1djYWn8HHPI7ogAKuzK6biaHRFMHb59GfjJOdtfn3M5pgkzonQc+eNORBklNCfuhs8cN9edtLVYCPIgaxbhnRGf9xwfj90l7DJw3J6jnSCc5xu9GhKKpInt4+HaWFH9kMysBM2gHvqDnq/+HhcafKsR9KNljop8fpf6vMfk+q406OEAT3qrM6oUE59J/QCDPaFAihud0DMWjJGAKZ0DvWCqZuFfxedunl021yhWPxHTe1Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:12 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 13/22] drm/i915/dp_link_training: Add helper to mark link
 training failure
Date: Mon, 1 Jun 2026 12:38:26 +0300
Message-ID: <20260601093836.3057345-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: e1c3bbbf-657f-43c5-43f3-08debfc1a35f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: dPwz0OATez0jX+SM4q9+QtRfLz/BaitZz+pczpQKs014Hw7ZUWL/l386AIKshUGi1IffLs1nGIwrUw0wzQeHwNOIWczGV7hohaWLPkmHMQSc5z85vXEZeIybHMj0SPsAkwYPBlTzmsg9JO3oAmqH/07loxNzSUaMPAdp8vR3OiHfefh5QViDWrLc4WrlQ3uAB1ZSm2j9NsJSJ0f4E/znDWu4tkkYxDfRbdmLRTpgcOdj/cEXJerCFg1g3CXAsXmS0AYpEdMb6KCzhJRVitQvdseszUnWj04SwPivhMIQU27Mp+6N6f2xuCuCPZrzKkZVwOq50seSKl9M+SjcezF2fa/O5GGuEcaTbAkwMigZAR2dx1F3a3K5O/+WdCrMXUDRpDMFq3Df0hi63NdCetiSZ/BQgyVy2SizIexkJcuv13yUbT2tOG/PSPQW6lEhniX6Q/vIoxYvrQNKxXld4Ax8lwEi7QrJ1fcaMRdY9EWWSlsiPTnv6qlk7+ATysTlRXC9j++1aWnlQbcUJfYLqrELW1qtPAPgwKYHwEiQfI8NEI6fMQ3ZlOQKLf2i0t0relw+yqATHghAQA/BajJzhZaVwxYDVHQ5fXQQwxm8mInPrOg3UwuKrS619GDXUefQwHNlzfc41FWttZata3AkW/i4BxCfiagAT2gnwFfDL3BchHSDOgtn4bzejYEbmD8R31oz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gUyXIpxo9CbXt/SwKaaVioxW2j6GFACHPeRIUO+iydbhsvHPIKHGt43avV4p?=
 =?us-ascii?Q?hWwLyKOQO7pJO1N/p3u7tYAW8XwayrxWMQJJzgJa+5Z6vy7xin1xovoUsmJG?=
 =?us-ascii?Q?m0iKpIlTs9/XNEHsasuk8MmgmN5LOCE80sRp9sDlTsqLbnnhbYJFTF9UWZp0?=
 =?us-ascii?Q?Uz9prAAJ7qP0TYS5H2UgrawC0EUVGiNjt6nG9aN5LDNlbOoySS1soOswkWYu?=
 =?us-ascii?Q?yCTBvNQMsO2YICXmO5/MjP4nUyoZzv2ot4W3pye7/H/TXk7GNwYVnWNNrP5p?=
 =?us-ascii?Q?h888L+9kw1QFqq38jhnepwTdoWbGXipTlCiBtZ0J9C/sZ4qa9wkVQ64w+7Ca?=
 =?us-ascii?Q?ABVqpS+c+OfMMrMpic8a3jyvP/JXdZtQVX6e2+C31sVEyMFsI5PU94vyqyQ7?=
 =?us-ascii?Q?uDueFJhe8Usbre7gHGIbGUscP40PfHWOUhAAstCqFN/sGH5ECZIbAjv377G/?=
 =?us-ascii?Q?iN/YvQZMo87eNXuKZHDXDLYmf7HE5zryzpQXk8nt6WfmvAps73z2saHxriLM?=
 =?us-ascii?Q?9+sM5U/wRQ2qy+iKaq6SCRQLuk/+jGAOZExkzeLj5H1nKCwQ4G05eoTCT/pW?=
 =?us-ascii?Q?KTBeZVjvVKPzei4B1aoXY6WQLPZUwpRW4dnsF0+mbHZBdDr1zr6ZcY2nTw8w?=
 =?us-ascii?Q?QhkWqYIH4sCTROUzj2uBRM3k5q898T0AS12v+Vim39MbsYLViDxU4Sg7ZGS3?=
 =?us-ascii?Q?9idykVGyI96zAir3zllJuA8u7VroIWe3J16T/0cHVzG6CAnwOMTCsebPlpy6?=
 =?us-ascii?Q?rrmjX7u0z/4ZTauoLAVxtyW8eRdtxxwnXrDHkNE0Q4whXQfxh9FiBbXLqHxt?=
 =?us-ascii?Q?YylnqHsu6ix99oyhXev2Qd5Fc29Cr7lonwKhjcUpwnt2hwAT4pDTVOzortw9?=
 =?us-ascii?Q?IX2bN+3ruDyKZMvvM99RdZIoLyEVZZIOhaaJ6O+HD3DW306QTSyG7Chl881N?=
 =?us-ascii?Q?JWMIv8lGhylqtrcibVC2ocxVuCdrplH0GrYACoIUIeMEV9X/A9DBZZduZD66?=
 =?us-ascii?Q?4WD6zjhcHugGZcVSSqJywmaq9ChXn283kvyLF+5srsKfMiUoWKymGBmuwfXN?=
 =?us-ascii?Q?TslVXQuejFjqFpKyd6Qq35aORPKp0Zidpkv0mc77V+ArXJosro53lu9EDnB9?=
 =?us-ascii?Q?kOh1xb3Ju/g3f3JTnPmcA3XXgS+tMwnprbWJEyW4SzfivI3Nso9MmfBTRAIt?=
 =?us-ascii?Q?VxUt/xW6gYfTmvnDH+O/h8+2D/QDQGNsEBV+46Yh8Zhp8q2Ma9j0d+7ViBrw?=
 =?us-ascii?Q?GayePIqamFkWdKek3WGNZ4keEXV6L9eXjfWLvDGAjGsysl4OU2Kt13xlU2gt?=
 =?us-ascii?Q?0v+Zppp1ijkf+S0UD/Sf60H5sMR+GvqRyb+GaU2m8qMKRSjWbyoU2qbTGZP1?=
 =?us-ascii?Q?+333B5u3HWtPWp0Vzv4lb6KgucPuga5jSX1RXGkTXvVpM105We93oMXeyAX7?=
 =?us-ascii?Q?Qpb9Hi57k2o3X6I3M/HQykwTLUNFI8/C924/hE6mgGHVxmIkpP6uqLkMBcYs?=
 =?us-ascii?Q?ormbR0o+ROXPgL6cGDfxHYRR9Mm0zDqeodYiB8nNEa7nbe8eCGL1fjW+ZDAp?=
 =?us-ascii?Q?MvdLOfqwez8rI9HLhPXTc+dWtq8dNdQyauizX+MU6yY97DTdlilMgdynh7Kg?=
 =?us-ascii?Q?c3ftt/FGrUfNDs4C01uXlgK4PXUFxHDGLUkJXWZeCvF533wk/7Bm9oSpU3Fs?=
 =?us-ascii?Q?sQXLlnqpP4LI4iYWy5YHKjBzn+bxUetFix1gH6BA7lhfksiiEoS1ctC3kI9d?=
 =?us-ascii?Q?bRH4kZBL6A=3D=3D?=
X-Exchange-RoutingPolicyChecked: IJpBMei/NXUBQggHu3BCzHXM+2besj9GNguDoxD9/NvaftdbFNliywrW1dywxfr3zYY542BorH3cs4mln/JqvdBO9D98fhGeCcMs+dCF4NEbiTPOGBMsSTe7QEvqIGlF5iy788MsgXhiJ4sMa9aYq6YdQR9t4d51ki59DNk855Y1g+XG9roNGZ3wffkKihOs7Uvkx0uCDsGDGEFjM35qdtSnJ3J/FGRr+McLCqTtKG1fU+k/ampnNklUbUJQtOL83m9MLE3MnU19L0xh4WN+fdFE5sCK4MuSU4J7zdVhARbUO/CxjKb/mP+s46bQxvQRsIJ1Umz0C59LbmQhSQUZWw==
X-MS-Exchange-CrossTenant-Network-Message-Id: e1c3bbbf-657f-43c5-43f3-08debfc1a35f
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:12.5305 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zNoEcIrgwjlR9FLr9hzv4tQgnWflVptch4588iS766MowaopiCQfBp2A06I0ltTcH6beK7DIm70F+to10BISpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9CF4661C9BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add link_recovery_mark_train_failure() to record the failure and make
the link recovery state transition explicit after a link training
failure: recovery can continue with an autoretrain, or must be handed
over to userspace after fallback selection.

This also prepares for replacing the sequential link training failure
counter with an enum in a follow-up change.

v2: (Jani)
- Convert link_recovery_mark_train_failure()'s documentation to be a
  non kernel-doc comment.
- Rename can_autoretrain flag to autoretrain_allowed.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 28 +++++++++++++++++--
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 6c48219d770bd..e0bb9f45b0c8e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1292,6 +1292,28 @@ link_recovery_autoretrain_allowed(struct intel_dp_link_training *link_training)
 	return link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES;
 }
 
+/*
+ * Record a link training failure and advance the recovery state to
+ * indicate the next required recovery step.
+ *
+ * The caller must proceed with recovery as instructed by the return
+ * value, either via automatic retraining or, once automatic retraining
+ * is no longer possible, via userspace modesets after fallback
+ * selection.
+ *
+ * See also:
+ *   - DOC: DisplayPort link training
+ */
+static bool
+link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
+{
+	if (link_recovery_autoretrain_allowed(link_training))
+		/* Move to autoretrain pending or autoretrain disabled state. */
+		link_training->seq_train_failures++;
+
+	return link_recovery_autoretrain_allowed(link_training);
+}
+
 /**
  * intel_dp_stop_link_train - stop link training
  * @intel_dp: DP struct
@@ -1828,6 +1850,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	struct intel_encoder *encoder = &dig_port->base;
 	struct intel_dp_link_training *link_training =
 		intel_dp->link.training;
+	bool autoretrain_allowed;
 	bool passed;
 	/*
 	 * Reinit the LTTPRs here to ensure that they are switched to
@@ -1859,8 +1882,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	if (link_recovery_autoretrain_allowed(link_training))
-		link_training->seq_train_failures++;
+	autoretrain_allowed = link_recovery_mark_train_failure(link_training);
 
 	/*
 	 * Ignore the link failure in CI
@@ -1879,7 +1901,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	if (link_recovery_autoretrain_allowed(link_training))
+	if (autoretrain_allowed)
 		return;
 
 	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
-- 
2.49.1

