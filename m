Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vFmAEpatMWoopAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C00695166
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=k9bzokBf;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 482CF10ED32;
	Tue, 16 Jun 2026 20:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A96F810ED28;
 Tue, 16 Jun 2026 20:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640593; x=1813176593;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=xMbCfkO87TiQ0Kyuhj71n+GogP3gkgsiepLHFC+SvRs=;
 b=k9bzokBfaEanzk+vjugfB002MBxlxs/rkPbf3vFsqWgHxQ/1lVAoQeka
 o7agxiFxjkZeWb9g409zyHhslJS08yWyrF0iNOMlcjbAXpROx8eYDlrf8
 aKGPb+p0Eu/Vklfzo5o/ddNTdi+FTOlDL4qCr2/yniHlvxhfutut3A3ja
 qd+Q/dsIiWonPDhjSewPFHDnLC7ByZVeM4NLcX33i5CtSJZtVmg0HaM4t
 oAUMthbjIuZvyw6BOsaVu0g4FUxzdKlAU3hYJe2AJMsdU69eU/ANGGhuk
 Nx3b0EgH+vzE+cIFU1fDrUmTf7KTa/W13+a05WthZSOWEZ82yHB5mJvNQ g==;
X-CSE-ConnectionGUID: xeQ+lwM6Sn6ul3bqZ6kBzA==
X-CSE-MsgGUID: Mpr6hKLQT8iFUGQnyt4v2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81427290"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81427290"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:53 -0700
X-CSE-ConnectionGUID: yt3S8gdTRBSuq0sI2pMKEg==
X-CSE-MsgGUID: NP+fKb/VQVWAM4HjYjjOhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="251786325"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:52 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:51 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:51 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pGxPUHa5UjW79S7tHXyi9fDJWuq3g+JjYFuqztM3wiK+Sa9D5s3SXoOpS7CC1ygVDPL1yEhmbZkkLw0em751jM46u28Y0iBdRIyUs/AFjnihAl5XxP2qGnYNG5qBHOv8FWxAXEmBclKpxmTlRRHFZbUB2XfGqL/YMPuXXfzR1x/foNxC+KMEKcI9gDDQz3SrASlOhHgqpJJV3GvoKJhJcEoFONVivdt2BdrMnKaORfefnqjO3egrb//VrG0mwaWhOscUxFI6UTIMvzzwTpZf2oW5fD9jpU24LMpZkftE1dAS2k/FeCDRfZwigCFM2tcX0g1gDKKZmjs64Bxrp6e7Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oBCQ4J/AFDSIK3cOubANVyGiyTI8OFPfzlLBCslE67Q=;
 b=r/O2573GCSAJBl3GHu9xMsunVZftoDq9Ftmo1C2np9SjJ/NVFGRg9gzNpWMrtTpFc8QglvmlVGbo4lcypZJgbbe0ZiWn3c5rRrmpZI7yVGZQYkYlwlMmWz+8V7C3HDtL2KlMNO4tJfSWR4EkbAWKh6vTjcjGIDyA/MNcPhcUkJyGoGwqwJwYxOQE0GeZHUm/5Otn6i+B3idsrhwgDg85bFlYwIBJPQ2JXBnooGuOoYRpNXmm3HiAgoqOYw3CmYa/abrmwXsRuTPumFVGZOi4nI15SS4xQ4K+9Rx6QSWI8MkLZoaJTOdVu8/hUxlziL9nSRINPy0KQ7xUxVu1Ma74zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:47 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:43 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 19/28] drm/i915/dp_link_caps: Track max common lane count
 in link_caps
Date: Tue, 16 Jun 2026 23:08:39 +0300
Message-ID: <20260616200849.3534628-20-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: ef9fb41e-01db-4730-5486-08decbe33468
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: CL1Urky5aEOstpKbYB31fE+XYUehpW0qPjK8lE1HPZjle8wPNhhDiYiC8dt8X4kd6KD38m+Fy8zFJ0A9LZrMKPdY/pDE8KBpITK7FGlbatMwpIf/qbTYiL2Znj79808y4PxopqJUsm1lcv+27WEVJxBOgvHAP6KEVY0SAWEKM5/WhWYIpPW5m8WrpuGooZi1BDuxOJi9ucnDU6N/1yUd3sDMD1Ued4RL5/I6GE+wfUhHL7tWSzaWm2aefC7HX8KLLZki5ErCGiLpSEPexuMP4P0301yVaBuPniZVGcL6IEtzfEW2bpirX7dfkkWqFCFuAgfC0h4L2JdD40uzsOswDCHcawjHTjLC6009R4ATbk0TBSWcoKcaPrQmCt9ZM3ragKD8QY9S0Oky8/x05LtG0iQg06/6W+Iqw6TA0kKEt9kmbyYuit3g97XFCb8DL1UaMdY+Vm6+4r3SaZ4lb77Y5yfB19OpmtWJ93RUymnxsSPKl3kThStfEUZT+iQjP/QkUO0NoBKr8Tqu/ion74OLCjPJcycr7AuLOvV2tnOXkEX0/b6PyDXLruTd7wrBJRwVUDYbzNGUexcHeLScumzuXJPaIK1K/zQhSX51HUYE0L/FWpjdWLi6jB2Gjj+5ZK7csvBXjRZ8llPNu+uFq73Z316+js10WjqQ5sAjaPWKTFN9nXAv9phautzvZnV/JkU9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?S/ofqv4eUIlov4/jJ63aZJJ8vM1q3ObExA7lRrRGDjxev50554WUG7UWpakd?=
 =?us-ascii?Q?quKjndAwy+fBFvIo0BilKnH9SWSiloXUJSqvjn2LhDwZlT5qclutcf223BJZ?=
 =?us-ascii?Q?VqSKXxPv6A8fKwa0XyKADx59/UjJXXOEWZ3xFocJWCqhG//QAuVTNgUD0uaf?=
 =?us-ascii?Q?llkkTmeqsMAMgNDuph5ZCEMVAXWZmjpeBu9SxbEpU3tI3y7Q5OfH8J1mZqfn?=
 =?us-ascii?Q?kqJHJ4mZSxCTLceO32hs5FPmKK0d0lY4OFCpwbsIyvEvuBkpxsimjYt4Dn7u?=
 =?us-ascii?Q?FArfz9bLtgw1ckMuTuV8Fs1lZoacGMKUs5tJopj4CA5mqkfjIYsM93Qaz/BO?=
 =?us-ascii?Q?2gA26ppJ7wM+ZjiIbXUys8e1XIywaOxdAEcNs9HT4lLOvsNCp5bjCjpTmzmq?=
 =?us-ascii?Q?icA+vG/2jECmEu7jZDklLu18JfYX5+3vO6Kf20VEbiyWq1ZRM2Wcivvznerh?=
 =?us-ascii?Q?pyEhlNGNBuhl7jeArKG/lDIQBaWP1V6bShvVscip/XbIdhWEFPeq7wnoYkvt?=
 =?us-ascii?Q?QzNgRgVT409ZNkZkRfnpqaMgxUaDTOwqqqnptXgS7gBYrp6fsKGsKkH7UYWB?=
 =?us-ascii?Q?pHieSlJx0a1C+5tg9nVM+jrOc7oWOSnsK2C+3FhmN6rka+RupoyfQaatP19f?=
 =?us-ascii?Q?8VjmgbAkS1Q33ditpYIM3notTST9lQa2WuXLffpWJi8RKIzI0/ILOAigjok0?=
 =?us-ascii?Q?SsmX0gV33743WoumD+p7LRJTIJ2+9XUSj3/bzB3NkfvC6/IPGk5ODExFa7h0?=
 =?us-ascii?Q?U4TQ2BlsxfOGkWU/TF40Wm3EAx3+rnMCnkbMANjS6hEMdLYP+9HQVzGaZ1UN?=
 =?us-ascii?Q?C1sb7Aqx69MaxRqOReg8SLQEgwP8mQX3f6gXI9jP8JKh/VBRouKSRQU/MYIj?=
 =?us-ascii?Q?GncFBG5jhABtywWKW/yOgbQBc7wc7Lkmzr/RPTSxUWIBL9SAE9L6aSV7Otfd?=
 =?us-ascii?Q?/k83seVXBVT4S4NTludEQufz8fMjUKgVudJVjQKR0KrSS9N3bSR+q8LfluL/?=
 =?us-ascii?Q?qGHGc6dQ6KpriHjJfjIOiThmaxcChID/CpN0zDjPj38YBULwLLE9f9aaLmaH?=
 =?us-ascii?Q?mecS8VM2P9PrTi6+Ykki6DZCqAkERrzGS4va0dHyTboNSgMROSL7JBsxSYeT?=
 =?us-ascii?Q?MZYI1wNyZkBCdiZzPQb/bpM3ZMcDRIwUz0vvsvuHAbIq0spMLeQNrOMXACis?=
 =?us-ascii?Q?OcmVWft2OY4J6x7pwflkFOY6hkYkavUtM5PtFJVN09SivDsH16ShOv4Hu9Sa?=
 =?us-ascii?Q?x51T+LNSlCN7dBG9oV7/mWqACiyOVYgDEy/XaW+LMbR5RmcoE8w+6SIal1QS?=
 =?us-ascii?Q?fWAn+2MrTPjZnsiFaTIhL6nyk8y4fgCfEUG+yLCEBR3YOXBeqviSZ+IVYu9g?=
 =?us-ascii?Q?s2zNXhufmO36I325pvlok0ggvk9W+mOJLjHaHNsJlZAatr2Ojo9odNE3h3ln?=
 =?us-ascii?Q?arHMXAQScR3GRnvYhLNV4naZcw75nJIg5J+UG6VJBvoslPvKSUbU8VAuBnKN?=
 =?us-ascii?Q?1rRzwNznUKr9J6FnSYB+mx3qVGnPP380x+5BmcGoLAFXKj8QxxfvdkifZsym?=
 =?us-ascii?Q?iOUfm4gMNEN97cJXFgYTE51rRsFxkTi0odvGwjR5yYSfvMLXH/aeR6TvZWq4?=
 =?us-ascii?Q?eIo2OJ4YKAp99uPkmUijw/HRfvSemRkeIlapVkGtmetobKTkSYgVLN09bRxQ?=
 =?us-ascii?Q?6WKu4tOJjr5X4s7rvSzRARLjfmSihkwZg1J98wx6xx49S7UfHvzPcIL8BV15?=
 =?us-ascii?Q?Fykhk7tglg=3D=3D?=
X-Exchange-RoutingPolicyChecked: TrAxx01BALywGeX5kgJGwqux/WgmW9bW5H2R/ohbdtxmjSoKlWkksjunJSG60QLrw+ywDyJ8pZXdSwR0jUAiewQLNS2+/mOzdVS1nDTZNL4moxPq+Ot9AzDx5G614kNhGq9wCT8+NUq1eZNQm+ND1gtb3Y3i7Qku08zczYq4U0KU4+WLjnG6KaOu1EwCPqEibG85L6TnRbtBCtg+B52HBI2OCUiFwwYNIXgy2xsdjJUq2VD1PLLirUnxFimAVSHu9T6xMd7MKno1mJ0lWTLXdS5vlYJbdajoo2wwzh9BZZSXyfcMajM9LDGo9sTEuLNECg4W3TgU4xRVYlZY0WkA6w==
X-MS-Exchange-CrossTenant-Network-Message-Id: ef9fb41e-01db-4730-5486-08decbe33468
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:43.2315 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2qKQDXL080Mw4dR42Rr/K/3VBnfN6MAlNxEPKmBY9UfaQH9Oa6wkYsHr83Qf9Tje7EjGTnlcVZrPYs+/oiJybg==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B6C00695166

Pass the maximum common lane count to intel_dp_link_caps_update() and
track it together with the supported link rates. This prepares for
converting all users of intel_dp_max_common_lane_count() to query the
value from the link caps module instead.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c           | 14 +++++---------
 drivers/gpu/drm/i915/display/intel_dp_link_caps.c | 13 +++++++++----
 drivers/gpu/drm/i915/display/intel_dp_link_caps.h |  2 +-
 3 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 84640c8394534..2873b2df29f84 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -339,23 +339,19 @@ int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
 
 /*
  * Theoretical max between source and sink.
- * Return %true if the max common lane count changed.
  */
-static bool intel_dp_set_max_common_lane_count(struct intel_dp *intel_dp)
+static int intel_dp_get_max_common_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int source_max = intel_dp_max_source_lane_count(dig_port);
 	int sink_max = intel_dp->max_sink_lane_count;
 	int lane_max = intel_tc_port_max_lane_count(dig_port);
 	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
-	int old_max_common_lane_count = intel_dp->max_common_lane_count;
 
 	if (lttpr_max)
 		sink_max = min(sink_max, lttpr_max);
 
-	intel_dp->max_common_lane_count = min3(source_max, sink_max, lane_max);
-
-	return intel_dp->max_common_lane_count != old_max_common_lane_count;
+	return min3(source_max, sink_max, lane_max);
 }
 
 int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
@@ -705,12 +701,12 @@ static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 	int common_rates[DP_MAX_SUPPORTED_RATES];
 	bool params_changed = false;
 
-	if (intel_dp_set_max_common_lane_count(intel_dp))
-		params_changed = true;
+	intel_dp->max_common_lane_count = intel_dp_get_max_common_lane_count(intel_dp);
 
 	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
 	if (intel_dp_link_caps_update(intel_dp,
-				      common_rates, num_common_rates))
+				      common_rates, num_common_rates,
+				      intel_dp_get_max_common_lane_count(intel_dp)))
 		params_changed = true;
 
 	return params_changed;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index e28f7308283ce..bb727bcf4de18 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -25,6 +25,7 @@ struct intel_dp_link_caps {
 	/* Rate, lane count caps common to source and sink. */
 	int num_rates;
 	int rates[DP_MAX_SUPPORTED_RATES];
+	int max_lane_count;
 
 	/* common rate,lane_count configs in bw order */
 	int num_configs;
@@ -169,7 +170,7 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 
 /* Return %true if the supported link parameters have changed. */
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
-			       const int *rates, int num_rates)
+			       const int *rates, int num_rates, int max_lane_count)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -179,13 +180,13 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	int i;
 	int j;
 
-	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
+	if (drm_WARN_ON(display->drm, !is_power_of_2(max_lane_count)))
 		return false;
 
 	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(link_caps->rates)))
 		return false;
 
-	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
+	num_common_lane_configs = ilog2(max_lane_count) + 1;
 
 	if (drm_WARN_ON(display->drm, num_rates * num_common_lane_configs >
 				    ARRAY_SIZE(link_caps->configs)))
@@ -197,8 +198,13 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	    memcmp(rates, link_caps->rates, num_rates * sizeof(rates[0])))
 		link_params_changed = true;
 
+	if (max_lane_count != link_caps->max_lane_count)
+		link_params_changed = true;
+
 	memcpy(link_caps->rates, rates, num_rates * sizeof(rates[0]));
 	link_caps->num_rates = num_rates;
+	link_caps->max_lane_count = max_lane_count;
+
 	link_caps->num_configs = num_rates * num_common_lane_configs;
 
 	lc = &link_caps->configs[0];
@@ -216,7 +222,6 @@ bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 	       link_config_cmp_by_bw, NULL,
 	       intel_dp);
 
-	/* TODO: Also detect a change in the max lane count. */
 	return link_params_changed;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 7d7d3d11ba3fe..e2f53eb167a8e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -27,7 +27,7 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
-			       const int *rates, int num_rates);
+			       const int *rates, int num_rates, int max_lane_count);
 
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 
-- 
2.49.1

