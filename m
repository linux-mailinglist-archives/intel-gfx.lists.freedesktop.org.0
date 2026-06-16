Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zzwXIpetMWoqpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3349E69516A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TwNioOUA;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D57310ED39;
	Tue, 16 Jun 2026 20:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B50410ED32;
 Tue, 16 Jun 2026 20:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640595; x=1813176595;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=UsMlA32eDGuA6XMt95MSm0KS/YuZxy9Xqp9ObD42rFk=;
 b=TwNioOUAS4CN9LfAikf94nu6irVx0+aMgId4vCNYZUIpeqJCAg76+uoE
 NLOisB/3kC4IaJWLKc81L1eLzYjwM2i1h/7yOrBWNqty0Q9aCB7AJ2wKV
 LtNxksjZ/5z58Gfo55AftBzmZEf+nuiqOtIEz2Q9iBWsCkve6VZgCWn/3
 HA6Meelno4uUPVOEAVO43/lLegUs98F59MzZHCybe/eInh8itHtuzSp4C
 qYfoaNCnWv1mGWhDzDamY7L54X+ePGN47OHDGw/ZiVjn9PLk2QPONcQNr
 FaoaDHN6BoB0ustXqPP4gM5fZM6zPQUI5vJbSJmwFUNbBpguqnnpwuYRX w==;
X-CSE-ConnectionGUID: DQHWK5juS5WuvdD53X9imw==
X-CSE-MsgGUID: rcVZ4kyvRQ6HC2VManSx5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86255880"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86255880"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:54 -0700
X-CSE-ConnectionGUID: xq7y5qcaTD6e0DUQgBKZVg==
X-CSE-MsgGUID: PaDJMeRxQEe3E8HMdURYnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271579852"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:53 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:52 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:52 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g1zkj1TdL+EpXegvzDoPKerOCy7on1Y3TpPSR2duVsLJhk3ceDtFn/FcFMp1I4XooQDGcC1L/YcftS2lD1W/SEqS8dGPlEEHR1ww2HXMNvkDC6Ulva7tSpKnnOaU6Mmxcys3ERbkH/DbtlyIUGaSerFXQW1OBfLyF9qWRZVDobIIeJzOuLvO4fBri76A+eGTBaFKjdkN0BtPz1CTBfv2yZkknzLT89i8oEiTMeOJ5Nwc4DEEQOOfFRNhvijoJUi2Uw9UBS0SvyIevEl24v71J4kdBN4KDUL0ps0/QtNKs+f4o0NXOFfSrKfnCdQJ1CXUXvM+EgMrlMBlsgc3jAc59w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QH5LHHnZTMBrZVhWuQIit1cG2HZ58qPIApIyJUPaW2U=;
 b=E1Sj2oQjWHOmzqcSXcNxZMoc9qpy2mffqpYTdPz2mOZpG/q/2YIoV61T3Br76dQIvLKM9iRFpJtu6IZ3LXSsSfr93Y/YPKmofvX90EH9DZ/fqrJw0l1l2vs0QiMglzb93YVPaFhFh+9YWCIhxdGNKl4k6m2ayJkIzSF4JouB9iEvEgcWFqdfloFbhQhe4PxuyHXk3WLwKPlyPoaKa+5f2tBNxF2r7ZzjiGpgQKyXHMF2we5W2qiCk7SXcxjTpAbtINpKbzG8Yg/8fCT9sK3+Hi2mGP2mHKDB8dCzjg0j/HZXUd0NxRpDhU740AsXEdkZ11fa84itytnEojifAFvRHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:48 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:48 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 21/28] drm/i915/dp_link_caps: Add helpers to get max link
 limits
Date: Tue, 16 Jun 2026 23:08:41 +0300
Message-ID: <20260616200849.3534628-22-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: ab068788-3745-417f-6c08-08decbe335ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: 2sbMuUjnPIcRKKcGa9iWOybrWmCTrBNxlLPr/Dzdn/sth4yIZJsCZKEgPShFHC0W8R10AoGYM5aw31k39aLLT5jh9d5C+vcYJo3id0uO3YEwqXtste2ZQvilDMiCUo4n6y69aCEOYqDYgfTLH6WO+4gTr6LKN4KkL6CAFr+lsO50Ixa4wFlTKfH22SooD5Gw8bekfdMrLjJc9OaFoWsd6Izwq+vbJhJ6dzQJZgOH4cPlSmfEQmiDAHZMc+qPfkXyS0C+r86R4NlbRWGP/WK9GIIwimI/jpWBjJR/Cf8XcDirlB9DA0tZTreznzr6Vp1p6kK4asLxqx8JWTTrVUQgp46tC1EQV+NEOx6kq3kSz3TJMtqsfxY1cwQi+5jiaCZ/hYvqLV0W+RW0r9qIfFw6a+HlfFTXhegobrx6gnFdCxyzavo/hTlBiYzvtfRCyYB5z3k6+tP6XI2GJKrjTGIufQuhNkCxGe84Xg8ybSkqZQpf/I8qISXXPN0hsh3nYxDtD4acKg43Y29Q+R+VwIbZVN4shHSozldld9+BeM0HHDrg7ihsxcMfCWjrjM5rce0JCnbU24R+4XfncvDxr5/5beb7iX6jZdEMEpePEoilV1Y3AmIbZz3tVlxI3BX5uQRPenAWCFv0vRdGKVOwVUt07h4/Wt6bg7icYI61yWRdUip3uNPztzHabwlCX6wIGLhJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/7SQ4+DJZsYVd7R5lJQyZtNqAZZhI2fA3xHBowyw+OXCBn2hgRC2o5GnGXpl?=
 =?us-ascii?Q?YSQjJ+YONuge84se5ZeJhmMwONtEZMKRXJEyBxKjPx/cuisdJhXlJ3dPH4OB?=
 =?us-ascii?Q?fbslORfzM8GsTK+m4OXerZb+mXwOv9nIiOf6ednalBBwUYONQuZAF3+Of1X4?=
 =?us-ascii?Q?1L84cGnBJ4jODSVlB2mOiPoaef7yEubTwB3qSDeF2gfrpIVBGf+vMDgcZ1u2?=
 =?us-ascii?Q?xquXGYZgy9Q5FUkr5naj4y10XqdTR+7MYgsNGRDX+XtrlHegUlU5N9n1nbHy?=
 =?us-ascii?Q?vD+AFjioPeUaHNzcJVIIomBAzbHi39PnWixvqz5inuIrNyuscqJebLZkVpuq?=
 =?us-ascii?Q?5z+g7c4pKofFnLgpug3Pb1TSNpj+u5ZrBTkCiOcNHgQNHusU/QGJJdxqE9I3?=
 =?us-ascii?Q?UK4SXXuZbpVoCnCbh/Rj2FuBR/08ijY2WzjkV6PcQQ/t+FhTaRO7aouktCxD?=
 =?us-ascii?Q?zXmgzqmmgErQlhpHIFd5mAf1nyRuBDyPwGpE0oeBcqdaeCxyIz7rlXf3wXFV?=
 =?us-ascii?Q?ZXGaLvqwQ4AJsVNpUgvM6v+XIyT0xzTCh/joVdPXu69g9LQ/Ahb7sD3618zM?=
 =?us-ascii?Q?8m8roJWxvtm3GPdm7vYQWBN/QvAUMTLV0cOTLHiFbHpim8xEMoY1YN+tV5Gt?=
 =?us-ascii?Q?PvPo++wcL70dHO0RfdAT3ydAaccoioiKb6KQ1MuoWIEmy+hdEVFiwX2q9515?=
 =?us-ascii?Q?b50/wfP+QUCeLoktAMFC2KZxKaH8thZ20RC+3X2fmsmY9NrKhydchMhTNQu3?=
 =?us-ascii?Q?F2ichkAqyqzPEaPZ0RQxwI1f4xFJ9YFeehgkAtzWYAOl0Yc7TlVS9r5GGxqK?=
 =?us-ascii?Q?TqYUykrrNxyRRLh/H3q6v1ZdmEc97EIl+JUI1Tc3KdfHNCyltoP/0Ipjpy5k?=
 =?us-ascii?Q?ZXl6rboNP4vI/WuweSkJ0JgjXuocHTrm7++mFtTEz+y+nZdIAifCZ8cbSLyQ?=
 =?us-ascii?Q?URGpY2wmvnWtlrpH9TTqFfs6C8JfYvg+yIsB4+8qPGFTrONKQmZJVueMHF08?=
 =?us-ascii?Q?IcQHjBk8HPYwts2l42N9N1ztSkzdIEqJl+oIdT0xt6YqbhwYXdvUxbDWf+Xy?=
 =?us-ascii?Q?WOXByoF1wo8sUC2uOTGXkwfmOWu+l8b0PfArBH+P4RXgi4V4x4nj8Vpo8poH?=
 =?us-ascii?Q?cAMin1HOTTR45hCXNpgyq9BjCQRvPIaBlnrgihq39hn4/+f6GZCOdIHiMDfZ?=
 =?us-ascii?Q?Y2OuXsnoshOZWVbs3A2vH3D66XycnDbjPQpbgxPq8a70bBVZFNuHpu/GRTDx?=
 =?us-ascii?Q?t2IbAXZ2fSOA5shwDxHbwHcbwaFBnp4CQdFSPvGoUxQA08Zfn3Y37cemNXDL?=
 =?us-ascii?Q?UAI9HMV5XQW0r2peSvpPhy3k87NCH4aQAVYicUNimLO658j9ZsyhDxbb97Me?=
 =?us-ascii?Q?kysMKP4i6Ehn27x8LdQ7irXoTtP17S5c5DrdXdyponDBAakD0cLC+CtkdrHk?=
 =?us-ascii?Q?qmz0kbhU6VsVIm4yBdiflrloRp5cx1lXin4hL7B3pKIfbRsJAT2rdxQus9+y?=
 =?us-ascii?Q?BhaR7TuZSLvK0T9VCUcB/y96usfUFsTd7uXjRUbDN1d3rM5WcN6gbo0/VNNv?=
 =?us-ascii?Q?ThMYXkKKmZ6ikQSWSC077SETY8K6rlY/HpEk9dhdqzXhaKYh46DAQvGhgkGy?=
 =?us-ascii?Q?ZQ7v3r0M7Ty31jLY5AtSFoTLVVM6yFbTdW98tp1nTTdUTKNKkuSq9heXWam9?=
 =?us-ascii?Q?UWo4Kxl86K/maCzWvYP3M1KSOPRnrkn9addIkar4jyP2t4bbJn0WoYJL5M2o?=
 =?us-ascii?Q?fHLK1Fxyvw=3D=3D?=
X-Exchange-RoutingPolicyChecked: cJBeDXLFpeA73IF5bb9DAYQ/eIZpm4zsj6nFl8Rg2+NZbGN2QKRRKSXvy/MQ0Q5DVEdRTnJR4OMxx5pohta2qCqNUXAOFQ6QTwQOKFKepkRUHyEWkXBhQ442xnk5+io2pXC1t1klLar1Pe8MDDH4DG1SYDyOdlnGrWhrUi8PrD8IyyqTFqM/MZtmAHDLXY2XGWiE3s39In4phUEB7q1RRvjJ+wtmkSqcMQZolu4fqpQfSt1Q7ZSQ/2pJgJCjvWOMOkFu+HEspwk2hTSINjDuVInLdVozuCE+Ei5mcOFJt3cARtu9KQBrrqqVvUKwM4QrVDgO0h9M6UpN6p1LLHSCzQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: ab068788-3745-417f-6c08-08decbe335ee
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:45.7965 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /qP9M4u2i2KgOpatSv7XBrNzgnIxHhsQFNL6txowJFKykyu90N63PNj8IQLRyavigXzQ/8XO/8C98jCpIZNDZw==
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
X-Rspamd-Queue-Id: 3349E69516A

Add intel_dp_link_caps_get_max_limits() to query the current maximum
link limits (max bound over all allowed configurations) through the
link caps API instead of direct accesses.

This allows tracking the state internally within the link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       |  8 +++-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 38 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  3 ++
 .../drm/i915/display/intel_dp_link_training.c |  8 +++-
 4 files changed, 51 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0d7ec7a8898c9..3b3c31122452d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -357,15 +357,17 @@ static int intel_dp_get_max_common_lane_count(struct intel_dp *intel_dp)
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config max_link_limits;
 	struct intel_dp_link_config forced_params;
 	int lane_count;
 
+	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
 	intel_dp_link_caps_get_forced_params(link_caps, &forced_params);
 
 	if (forced_params.lane_count)
 		lane_count = forced_params.lane_count;
 	else
-		lane_count = intel_dp->link.max_lane_count;
+		lane_count = max_link_limits.lane_count;
 
 	switch (lane_count) {
 	case 1:
@@ -1539,6 +1541,7 @@ int
 intel_dp_max_link_rate(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config max_link_limits;
 	struct intel_dp_link_config forced_params;
 	int len;
 
@@ -1547,7 +1550,8 @@ intel_dp_max_link_rate(struct intel_dp *intel_dp)
 	if (forced_params.rate)
 		return forced_params.rate;
 
-	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
+	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
+	len = intel_dp_common_len_rate_limit(intel_dp, max_link_limits.rate);
 
 	return intel_dp_common_rate(intel_dp, len - 1);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index b227c9a55f63b..fa7dabc94ddf1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -151,6 +151,36 @@ static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_ent
 	return 1 << lc->lane_count_exp;
 }
 
+/**
+ * intel_dp_link_caps_get_max_limits - get the current maximum link limits
+ * @link_caps: link capabilities state
+ * @max_link_limits: returned maximum link limits
+ *
+ * Return the current maximum rate and lane count limits in
+ * @max_link_limits.
+ *
+ * These limits constrain the set of allowed configurations.
+ *
+ * The limits are set to the maximum common supported values after
+ * intel_dp_link_caps_reset() is called, and can later be modified by
+ * intel_dp_link_caps_set_max_limits(). The max rate and lane count
+ * parameters are independent limits, so the pair does not necessarily
+ * define a valid configuration.
+ *
+ * This function may be called without serializing against updates to
+ * @link_caps. However, without such serialization the returned value may be
+ * an out-of-sync (link rate, lane count) tuple, i.e. the parameters may
+ * belong to different update snapshots in time.
+ */
+void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
+				       struct intel_dp_link_config *max_link_limits)
+{
+	struct intel_dp *intel_dp = link_caps->dp;
+
+	max_link_limits->rate = intel_dp->link.max_rate;
+	max_link_limits->lane_count = intel_dp->link.max_lane_count;
+}
+
 static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
 				   const struct intel_dp_link_config_entry *lc)
 {
@@ -482,6 +512,7 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_config max_link_limits;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -490,7 +521,8 @@ static int i915_dp_max_link_rate_show(void *data, u64 *val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	*val = intel_dp->link.max_rate;
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+	*val = max_link_limits.rate;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -503,6 +535,7 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_config max_link_limits;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -511,7 +544,8 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	*val = intel_dp->link.max_lane_count;
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+	*val = max_link_limits.lane_count;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 9218cb5de2c71..376dbd9bd5aba 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -27,6 +27,9 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 
+void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
+				       struct intel_dp_link_config *max_link_limits);
+
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 			       const int *rates, int num_rates, int max_lane_count);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index ec9bd9b4c800b..7145f2d0ad6d3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -2389,6 +2389,8 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 				u8 lane_count)
 {
+	struct intel_dp_link_config max_link_limits;
+
 	/*
 	 * FIXME: we need to synchronize the current link parameters with
 	 * hardware readout. Currently fast link training doesn't work on
@@ -2411,12 +2413,14 @@ bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
 	 * configuration. Although that happens to be true for now, it will
 	 * stop being guaranteed once fallback depends only on disabled configs.
 	 */
+	intel_dp_link_caps_get_max_limits(intel_dp->link.caps, &max_link_limits);
+
 	if (link_rate == 0 ||
-	    link_rate > intel_dp->link.max_rate)
+	    link_rate > max_link_limits.rate)
 		return false;
 
 	if (lane_count == 0 ||
-	    lane_count > intel_dp_max_lane_count(intel_dp))
+	    lane_count > max_link_limits.lane_count)
 		return false;
 
 	return true;
-- 
2.49.1

