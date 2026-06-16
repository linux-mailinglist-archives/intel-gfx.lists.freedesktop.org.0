Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /pBgFX2tMWoepAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3593695141
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=i8RmZl1r;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33DA310ED16;
	Tue, 16 Jun 2026 20:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5982910EB37;
 Tue, 16 Jun 2026 20:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640566; x=1813176566;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=tHr4vh6+hs/E8hgsWuVyQnlp33omr9D0aOs9SIYK4Co=;
 b=i8RmZl1rOCXEFkEkmQ5dYDNQ2RwjvxYCFQamz6bdHW9o1Sfa0TuVGDHl
 Kw8qMzih1zZva9HqnbeUUGaTaVdUEEj4W7reMKFhsxCe0mMH3hOyozhBg
 d4sYdqJ+/Vy10IHDWLIgwfXwGS/sD6+PSkKZX4I4O33KdoQlIMtYrlSUp
 b0RmcHWLo+S6LN2tjjtbxGrB0MqSCW+7DddMMfrojnw70q3EMKoOQmCOg
 /TNqYspYM/iut3Nt0skuXvOTgknQo0f0G2XhRP2xcAbAtifp/RaEKy9oR
 uOTmlvDXOHiX+Moolb+1QZqkdvGk8oQi7y1NaXAcjPAR8R3GYoN9daaGM A==;
X-CSE-ConnectionGUID: 4ANE4pfFRO+xhtVaFnunAA==
X-CSE-MsgGUID: 8H5oXPK0Q+m0/pZnsBMHvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81556912"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81556912"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:26 -0700
X-CSE-ConnectionGUID: QZHfI861RqS49IsemUccRQ==
X-CSE-MsgGUID: mB2dYx68SE6zngdO0jTo8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="278072806"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:26 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:25 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:25 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.61) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e3dYgcwDxEy9HBlWNJVlIrM616R02ltQsOsIR8ELjM+0BfrlWofuHrHTxsH3KIq+AkaqumAtkhFrKpZ/AO/9t0xZys+m73TrSmZZxEN9GU8765Sw3WWlyXohZKvZ3rJ5ffuO1a0HnrZlXm/a9jlWtMzPF+mcfVfOTdYs04I+6Jzhd03VFOpDoYYTq9lInEMZaa3NDel9Zxk+64Tv7HhSqtjitG+1ozLr7JJw/71HyRPce1EFV+z0hYh/gCPB0raaTcUEMgh68a8w1HbkgxfWihVSoh55UuPw69CMjAR79pf1fjHs8f36M/Fc898K5OXI0jENhRfbuGo2Dt062Ibh1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZQDVpHpXoyRrbo1GK51gSneDohdkAKNqoHCX/lsQejI=;
 b=FEH98Lolof+KzBJaVvmfKqzzA5qFqCjJcOn1vcqRoc/KEOszndwZdn1hy1/UscloIf076BJmuZLzCGDCkQ8LPpawfpEyQGTigVBNgfmi5VD0fzpdUp3sAREjr7suNOUXtvh8gaJo7bAvmyTTz66RcW8LXm+M/TTeYqBjajE6R2yq4zXlytDH0KEoUDnbvXGyHoTbQ9ThkeEwktyoty2+lCuuCEN99Uxe4p1/3Crvpaqos2M6rcc1xqglWfN6DTDkhkZYdDBpfLbZYzBuL4XdaMzjo5ZqJ8Kcq0Z7Qg1AkrIfQNSAFxlxxo+ocTIZSfOWDawgj4Qba0hFPvnEgRpMoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:23 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:23 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 04/28] drm/i915/dp_link_caps: Move common rate helpers to
 link caps
Date: Tue, 16 Jun 2026 23:08:24 +0300
Message-ID: <20260616200849.3534628-5-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: c126cd08-54b0-4e0b-956c-08decbe3284e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: fHOnKm3NRDTGVI5BU7asfKmLMtk/PSdiaMx/x3rIsVDjnIXu+zT9bpch0iTVz60zg4gab0veh1k+SXksoBnxo1JAET2Db5TOoWYdIWbOBr94cF6kx28vPK88zhjqs88/kafAZtuxVrx/jJmkEhE+ycNVW/DOuWgKZnDRj37L3/t0bwletd6gRWvxaNGwdLrrkQhF85yUJ6X183+3XpjEvkXnlSbwfP9IDJqLOQTQu5wpZN3FItfplD2uENQBJxz+HGXSzCPZnOePAkW1LCB/qt6dwAr7yPUOxdIJXMTRcsvx0mLiUS/qWY1JIdvGlOJ4fp74T5VwWjLFHi/p+WV8nsOOV8k7wFWkvlHbJgTIiJNdDzPleOBfJyw7QzW0KtCZ928YdN8iUCxismgM2J2n8Lj3DdZlsFnVh9V5t9WIc767Hfck3diOX4rLtARhB2+62wBymOrXNKCJLQdOf20Sjw3252BtDW357VN3HRtM2dxXAIkbnfIOQ/ej2l0AbbMOsVgTS4TfLDK8sjSAdVeXGThoNRr74W3T8A8GPbgD3WQDLjoDsuOrFoSKbufl8rjConGsVeRlY7dGlNeDSxHA+iLVp5Rpm5NWgXLpH71hViwAqmjZjhCXDjxamFDO11cQPjF7c9zlot7Na7dfQUxSa2leNvKekUZRNlg2P2rEv7JMUxZeDaEXcMyshfYklZ8m
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rebDUMEecAnXPlADhYpQFgitW8STloD2RdXPFS8brGhJR/Y3ReRVVmAiSiPd?=
 =?us-ascii?Q?o/Rc0ec9KHNzrHg7uQIHSG2SytAJ2hFhZvGQdGZufjOomtbEzBUDn5n1QF/u?=
 =?us-ascii?Q?hLvJuPzJZ/Es6d4xnsqXDy7uajt8AAVmezqcyjIw8Z0MmLrlPi3xApd8rexc?=
 =?us-ascii?Q?kcKMhs2s4WtLMA+wYXWzurHZfpGbS/3G30lDfEABkH1aPxbzFbU4xc4/RkeK?=
 =?us-ascii?Q?pLcVLqOqfReCXklpfHgsX+He2MVuntN41HNX+T6roLVtPJ1jU2MqXlf1qU8B?=
 =?us-ascii?Q?qVpiWX407pjcaRJsp079Z+dpqFkkluxlM453w13qd/s/O/AihzqGQxZE8JFc?=
 =?us-ascii?Q?U6aEjE/q6wb1ITWCo2MYX2GbvPX82EfEvb5/wwsFm0uVYAkcGe8lbpVxE2Vh?=
 =?us-ascii?Q?HRCeg/rsN2Ni0em7g/cDLO3iSDjjogoSCEYBRO9nYEVwTh0I3yhIUAFH1Cfb?=
 =?us-ascii?Q?PxaaQmeochSQciM1xKAzU6tbwDL0L3fo99mWS/heweiklI4eIBcjsfNxfpXa?=
 =?us-ascii?Q?Eyqhz3OYNPdDUu4YyhrcU0oCwMPG8IXpgxC/c/g1xdSH6M8WT8GLqgAnDQFj?=
 =?us-ascii?Q?KdQnF8TN9AiKOgyF7cNZGp+Ho5wypGuwSTf6Q3TpqcTZNZOEzejioNL7bZQf?=
 =?us-ascii?Q?0G6nN15or4PlgyHGG/z0A8I54wjQI5JlPpVw5SyjtlnNAYuinQxwc4PWIZvF?=
 =?us-ascii?Q?BM/glCgsK/wrEwDc99YaS63ZWqWq51R/z8vov2UeH+QfTF4BYnSLlZqa+4z1?=
 =?us-ascii?Q?93gQwylTA8XnxVGhX075ON409AkPKHkIX0Zvyhg2M2Fni6zo55cSXDemPEQ2?=
 =?us-ascii?Q?KZDmkrpPDRW7BTMSbFZUMWkwDgNIizuew1a98Ld5Qt7vNDYsDyFIryZFaIZs?=
 =?us-ascii?Q?QCmcLHq2v5k627qkz6PfiHSdh9ig2myZCooGuqnCWIMypp3fh4lldDHy5ZEx?=
 =?us-ascii?Q?qtTxld+XKY/MmVYBdmAXzmKZ1nZPCnSpEtFj+/wOwNBpPyeWEgWOs9+urgml?=
 =?us-ascii?Q?qmY3hmkncxkGeKlTl9Co9JAZ//Kdm1l6/gcb9f5eTutpDWLw/XNct8Jc2nSk?=
 =?us-ascii?Q?tHgZK689nLl0nJrEJg27i/SQxyTkwJEqGTesHrGTAsmjJwQn4/+FaCzZ5Wia?=
 =?us-ascii?Q?Au08MW8WYERXT2uMgAtaC/DtYnIrZhPzora6fmQDaLWwiMtvzkAMe8qkwdQr?=
 =?us-ascii?Q?PBr1sppGiZUziTEykTc7b5BxZqFXCV7P7bpOd63GsxByRauGhuznxYB1/TPq?=
 =?us-ascii?Q?9c5RJLmaI81Wd1nCmVg5ZURyQ8Q/5vsJbMeuS7YfpMqye/JXi6uhzIOyZ0xq?=
 =?us-ascii?Q?Pvrczsd+LJTmlVdwempIjCuIm7BDJBGYVCFPOtncxdcO1x0DBSDXILyMFTCs?=
 =?us-ascii?Q?J+Ua5vQI+UztBR1C4SpgDUNr5GYv3Jw++9Lmf7h01dxxj8V14OUEE/10knHO?=
 =?us-ascii?Q?ksfQllQtgqVeX5oi2HfFb3LO44WTD8JENafVz+s+6ZKZjivVNIAkflZMPqVt?=
 =?us-ascii?Q?t5q7HXNwFFz/hv2cG0eobJQ7X4yzloql228DY/2lrzFt/PlLPXKI2Y26MnWd?=
 =?us-ascii?Q?mKh0IKIjP1N0ZwPAk6h3wapFLD0bnaIwZcAy3XV0H1Q0W0SLLrqwrMCJ7NF5?=
 =?us-ascii?Q?aG1Z5kwgRQqcs3XYKh9pKSmvFzBVEz3LI2APV+Khy3nkYcdNPB3AkfY1+Mxb?=
 =?us-ascii?Q?83SaiAo0IS1IQZ/q90z/TcK38LfjxIReYqwksUCiZ9XNYeHlrmE0Ai95lNDN?=
 =?us-ascii?Q?sOd9c4WN3w=3D=3D?=
X-Exchange-RoutingPolicyChecked: GcuSf/jJfdywZfBCWOm48RhxJ7NSUs7gPT3Bl7JR5glfx4tJ1wY/xO2nGFdIuV7fflRcawPhKtfaQVAeGZPhLfLDgK1P/o2wuBRoZK+VZcqyP1uFYoxXfoYl3oZ/bNcEUVX+0DIiCYi+GzLAEx84qgAtoqE7sJrjh1+69oQQzyrFtJWql1LKLYyuV0x1iB6Z1QAHujyq8BOEGYsTziQWUSZFzM3RYPGdtDGMRcD4dicfex/SIswI1DojvOal24MKulhDbaNn6vIyS9+a9YkrNFgZKB/g02u3Aede/IRucHkBfPfGdYUxBdqSkwPrePenfi4h8swEb1onAm1KcmKGcg==
X-MS-Exchange-CrossTenant-Network-Message-Id: c126cd08-54b0-4e0b-956c-08decbe3284e
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:23.1001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9uPMX8cQg36bPYqzWYpkPl7fvR9hRsP83//oOZYbHWqnS3L91+QToUAN8KJOdjwReQDmipY8L44FtEDBX7yr4A==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F3593695141

Move the helpers handling common link rates to intel_dp_link_caps.c.
Their functionality is part of the link capability logic and will be
updated to use the link capability state in follow-up changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 27 +----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |  3 +-
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 30 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 ++++
 .../drm/i915/display/intel_dp_link_training.c |  1 +
 .../gpu/drm/i915/display/intel_dp_tunnel.c    |  1 +
 6 files changed, 39 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index fa095c4db7fe6..a34d3704a5667 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -314,7 +314,7 @@ static void intel_dp_set_max_sink_lane_count(struct intel_dp *intel_dp)
 }
 
 /* Get length of rates array potentially limited by max_rate. */
-static int intel_dp_rate_limit_len(const int *rates, int len, int max_rate)
+int intel_dp_rate_limit_len(const int *rates, int len, int max_rate)
 {
 	int i;
 
@@ -327,31 +327,6 @@ static int intel_dp_rate_limit_len(const int *rates, int len, int max_rate)
 	return 0;
 }
 
-/* Get length of common rates array potentially limited by max_rate. */
-static int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
-					  int max_rate)
-{
-	return intel_dp_rate_limit_len(intel_dp->common_rates,
-				       intel_dp->num_common_rates, max_rate);
-}
-
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-
-	if (drm_WARN_ON(display->drm,
-			index < 0 || index >= intel_dp->num_common_rates))
-		return 162000;
-
-	return intel_dp->common_rates[index];
-}
-
-/* Theoretical max between source and sink */
-int intel_dp_max_common_rate(struct intel_dp *intel_dp)
-{
-	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
-}
-
 int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
 {
 	int vbt_max_lanes = intel_bios_dp_max_lane_count(dig_port->base.devdata);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 92ce048523267..8cc6ea04e000c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -100,14 +100,13 @@ void intel_edp_backlight_off(const struct drm_connector_state *conn_state);
 void intel_edp_fixup_vbt_bpp(struct intel_encoder *encoder, int pipe_bpp);
 void intel_dp_mst_suspend(struct intel_display *display);
 void intel_dp_mst_resume(struct intel_display *display);
+int intel_dp_rate_limit_len(const int *rates, int len, int max_rate);
 int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port);
 int intel_dp_max_link_rate(struct intel_dp *intel_dp);
 int intel_dp_max_lane_count(struct intel_dp *intel_dp);
 int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
-int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
-int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
 int intel_dp_rate_index(const int *rates, int len, int rate);
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 63989d97effd7..37ffd714c6a42 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -5,12 +5,42 @@
 
 #include <linux/slab.h>
 
+#include <drm/drm_print.h>
+
+#include "intel_display_core.h"
+#include "intel_display_types.h"
+#include "intel_dp.h"
 #include "intel_dp_link_caps.h"
 
 struct intel_dp_link_caps {
 	struct intel_dp *dp;
 };
 
+/* Get length of common rates array potentially limited by max_rate. */
+int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+				   int max_rate)
+{
+	return intel_dp_rate_limit_len(intel_dp->common_rates,
+				       intel_dp->num_common_rates, max_rate);
+}
+
+int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	if (drm_WARN_ON(display->drm,
+			index < 0 || index >= intel_dp->num_common_rates))
+		return 162000;
+
+	return intel_dp->common_rates[index];
+}
+
+/* Theoretical max between source and sink */
+int intel_dp_max_common_rate(struct intel_dp *intel_dp)
+{
+	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
+}
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_caps *link_caps;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 050b279463d6e..3248777d1287f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -6,6 +6,11 @@
 
 struct intel_dp;
 
+int intel_dp_common_len_rate_limit(const struct intel_dp *intel_dp,
+				   int max_rate);
+int intel_dp_common_rate(struct intel_dp *intel_dp, int index);
+int intel_dp_max_common_rate(struct intel_dp *intel_dp);
+
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
 void intel_dp_link_caps_cleanup(struct intel_dp_link_caps *link_caps);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 97cb407d084cd..b915cfdeabd0e 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -33,6 +33,7 @@
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_encoder.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
index d6bd1f7e01e18..c82adfcce01d0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_tunnel.c
@@ -11,6 +11,7 @@
 #include "intel_display_limits.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_dp_link_caps.h"
 #include "intel_dp_link_training.h"
 #include "intel_dp_mst.h"
 #include "intel_dp_tunnel.h"
-- 
2.49.1

