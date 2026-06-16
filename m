Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q14gEJutMWozpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDDE695189
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:02 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=h+8v6Uy6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63A9E10ED40;
	Tue, 16 Jun 2026 20:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2EF010ED3A;
 Tue, 16 Jun 2026 20:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640599; x=1813176599;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Hgf40BNnZMoNLCljA6qdthl1QlmJxKfUh853FpYH1V8=;
 b=h+8v6Uy6y26CH8j6khn3aWbeP4JKFdw50/05Mnv6LxoNVvF/x9kw/+/2
 lCC+9hrESBRU8zS3OxlGZZ4DFrn9vDemMvGbLYameXg4pTJK1L2haZi3q
 qNAphu4OZZR/XOi7qewvbWMY8lRhJGhsvW10T+7ilihR85f46usSgEp4w
 azNaz6kJ/rQPAdcSUWpyqSuhyIvkNp9oASmus0IqRKQZC+qMqbX9RBn0A
 Q8NJVoQ+2nFz2cQrMk6AZwx5wUxp88RFzfsRbeYlZI6/Sagc8QYzF5H81
 xOL27c8iGrRR2rj+yby+DwOTshO6FiOBZEtVI6GewGP8zxg20fgP1ChAH g==;
X-CSE-ConnectionGUID: zkSPw61VR7KpxjcdaBe0KQ==
X-CSE-MsgGUID: JMT2ZrmhTQOnHEpijKfstA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82618676"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="82618676"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:58 -0700
X-CSE-ConnectionGUID: 6Gm2E1kkS52/djhX20Eimw==
X-CSE-MsgGUID: 3jYAhgp1RXScD8Ep1jfmCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="241515578"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:58 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:58 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AB2wAxuQdhdfePOQyZ4iNHrKcJC4s6/ibrCAefIMhyk30xzMmWMtp8x6wowlzDEZCXK7cFqhptw+7YyNpnwLCHzMKfeXu+zslFWw87WNcHVY7gC+VxqbbM6n2BfyV1Qs2eeTGBn9x4VOetiXfa7u3MhFWF2ogz6Rj/oEL3K2er22Ehv7dDJu6HCV4teh1aNPSEU3pWO7noiLge7Cs/2bdpTgrtWBedGak57KkYwCz92Y1uQF25GUNPGHhlN37RgpDq9SOCV+JUfHsRgvrMx+V+cJCxLOQZkeQ8onhHtbwX5PDBggMXitkQeFloS/WDX/Vx5qmAvGxdLmuEkr1BKUhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5jj3cbvb27C+kpo4sNObNvFE+NyFJkcTGGfb5RR69r0=;
 b=UNhJwdu6etFCKF5XfdFeTKA2jEZd+xBoNNoMwcXKxPF2cPza62I57NLkZPhxMdhDbdfYcBI50S/nqRiPO6VnK+qN88l3YGK0JjY9Q3/fQexOWKSnNhMe1NSTcH18V1TVuhMcFolLpW/Otl0SE061TEr3+85zVKbTpuPgoddA6/kwE/2DCqpklH8TGgAOKAmB4lad4eDqdBtuYPIbonVYqHQBZ4iCATJB0mT+0wCUuQVG1vG7ngZxGwHKSp4PtONTIBFZ5mxXi0NTQCMtxpdFWT2E8RwW5iFb3yTFCHNNGu48cxQkhIRo/JPILFP5gf1N8UBc0FOvVwtpj3IkcCCg7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH3PPFE994B740C.namprd11.prod.outlook.com (2603:10b6:518:1::d5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:49 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:49 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 24/28] drm/i915/dp_link_caps: Add helper to reset link_caps
 state
Date: Tue, 16 Jun 2026 23:08:44 +0300
Message-ID: <20260616200849.3534628-25-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH3PPFE994B740C:EE_
X-MS-Office365-Filtering-Correlation-Id: 89325a3c-8639-4c5e-cadf-08decbe33831
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|6133799003|22082099003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: IuYIkCJENkALM7ogW56bJ5Tehk5Fmu6p8c79KNjR9OQE6yE9MuVSovR5pGzjA9ZBEukkrMApYWiV41h8h8nSSxUuK/eTq3VUd6oelvd0wHRXr7wKABL7KqoQ6UW/TDwN96w6sOZn6Iwj7BiCu9oyoillgl0q4HYtV3kE0MLr3N97xmpnbN2LkoBqyPxC6yqOvfjMraI4cpQaovDApxDp+UU2rNnGrHKwt20VmlJyfEIvvMGcHgrAAsCq5/WojQZwifXFDBb5eZ5K+mYzpgdP+JEWCHtOnbG2DG7BTG1Ya/eBITOgk7Wed/r80ZAt15rAEMBhBnFtJMN7U+dXY8eB/JN1fNCVtsaYN1w+bpsn52efTKfkebhgVVAZe8QZA2xiJgRUhNF1v8XqW0suFHTI9Cm7rYoymjCMUqZmJYadm35r13ytOp2Q4f7tFuaPbzpLCZxGZgfVQmEaZcYRSolRLD293rkUAvQNzYDGrGoPmJiKv27yp0DVHMo4dtkDMQyn1K/xUds5tfxaL2aMmbAPrV4yJg398t8a5uxLBIxvhyAFLSFjZsJEzt4f9RBk6fSRO5X4FN4tiT+V5FjQsNgxETZtN/22d6P3yH+8jWp9yjeoU4m7n5TmONfj2lzrLKhvKQa20Qe+jouwMxnzEGcMfl10A8lUyZD2sSW4ezNwDJ3S79F9oHr2Tx5rLur4GLqD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SVbnYPrSkH17Ytll1CUvoFOML0CAxJYfmyrDON/M6TWkVhnP93mlsoNkNT8C?=
 =?us-ascii?Q?CK40L+ECq34rIXi/wbPFdjb/Sqe2ixxKVgNW/uZcW6BnqZDIlJwyw8YYkbUp?=
 =?us-ascii?Q?tZ+0Q+OWDTsvi916fliNaZuEDwQBJARzoqY7vgm9euSyco6T2ZaI+Ams1Mej?=
 =?us-ascii?Q?maWq53e3wPYHcnEqLqRf4+Dj37ZUfHLySz3s/tbe6SelAYZCsi9a9SEgBuaY?=
 =?us-ascii?Q?ZygzZr1g+KmDeQf8h5nBIOhINuQJDxzz+I/B5EkMAPOzIreaQiQWSIN16pFh?=
 =?us-ascii?Q?KX3YspOqjI0jO9sJkQjYS+CtO8EoCBc9GxZsNMr66n+lMTme2WUkLc6klhq4?=
 =?us-ascii?Q?DHAdDUVTte9m5POnOjBIiEPZfUbh4DDichZoI0iXH9ZiVceKN/X2rKk2GJxX?=
 =?us-ascii?Q?qn1I2VINYLpqSdSEwS3+M5ylcT/wjiEszfwXK6lYn0aexGYI3R96IC32vINC?=
 =?us-ascii?Q?Z927p+VoSUZjipJy/dz69DoHYf3R9Kj9xK6nJln+dZ/5k3I9w/R9XN854zs2?=
 =?us-ascii?Q?H06eykqIJL8fAKW5Ik0wcCy+EUdDBxnUY3aIx8w5yS3WlgnQVsOJLzofVFnN?=
 =?us-ascii?Q?K2xIfUgwTun+qPMIiMVpMTUnsx/E82dcfKO9D4dH78gIzsFMnr/+FIyzupHe?=
 =?us-ascii?Q?SigZ7b8uqP5SRROPIl6jOkAbEIK/5LFVsVVmZoP7wwB+zS0hptq6bry+y7yu?=
 =?us-ascii?Q?09YXShd7Z3Ryv/xwwzgFTPs3KD3/QYz5K5O220Q7SDGDNskcirK2zUVFSNlv?=
 =?us-ascii?Q?azy/c3MfHJccowH8SZ5Js/RE++Qr6uE59kMZm6w/K6ai55S3KaU755lmw5CD?=
 =?us-ascii?Q?daJJDW3hGmGJL74D0gNYe9hBBcUkEbQT/EuklY6dxRUEZ7pzNkXe6y2EYj25?=
 =?us-ascii?Q?5ywMDG2d1v94DDA598yK/kIiFcqXAWiKYnmWq6UH3oy0vuBKBPCKirIqOHFX?=
 =?us-ascii?Q?yK0N1yjJ2t6ZnYVDsIby/feOVml8UwbVmr1M6yKD7a38qHVJxYWZuxugmW4l?=
 =?us-ascii?Q?XKi/ZO2ix85daUQ/rsdKvp+sZeQt8XgInhhWB6WM3KfkzQd+/4dyjxbJwz1b?=
 =?us-ascii?Q?h45jaZa/DEV4vAfIcA/kbzfhfX5ZdZYaFUH/pK7CDRs0QrvPOCS8PY8b/Vw5?=
 =?us-ascii?Q?fF7Ef6OR6EFRYy/3uF3JRZqAgOZS3cYcuptGjiDBa0dnVrGPX3UpoxeuE7+g?=
 =?us-ascii?Q?PZOVh+7HSjAVk6DJNg+r9wm9XL8/GTd+76XOp9qFRGGYHd8iB4gB+tWva+gd?=
 =?us-ascii?Q?woWurIb5ZYe3Ibuj5LgEd1g8bCI+oyZURZSi859jCHVsK+YUySLFjGz1N+N8?=
 =?us-ascii?Q?ZmyUVn4zwvmQWNmCJaTpvRn05a86sCS1JfPjgHjcw+kSvaC1b/q6x0usgTFS?=
 =?us-ascii?Q?dOPAcyjqMKS8G+rlPk/UbmGeZwlbCuvVG0T5ZaG18kofDuB6gYIQ6EAx8H/4?=
 =?us-ascii?Q?4HdnkDLbC1lSKfZkC8Bs7RmFYOgTfh7vP8qJ6zP5esadqj+2HqMq4s648aK4?=
 =?us-ascii?Q?E9QYzTkngz3w//6YhVP8qdMIgOi/jR65BNfzSMT53DBdVeOuurFAj7nPyN2g?=
 =?us-ascii?Q?79Z6mstyW0POvXYj2iERKpBmoShJtSzSPnK8MoWtzpGVqkJ7A6rBFg1wNhZv?=
 =?us-ascii?Q?JP8lgrmrExmtqmO+rCLm68+PftFQ7cEth7IlBBDt8DI6hfPEXGvuPN/j/Gpj?=
 =?us-ascii?Q?41NyipadyGOndypIuHE3wfK4fg13mD5DBumGP8h+75WwjlYapwt9GRFBdHyL?=
 =?us-ascii?Q?yshZM/BoVA=3D=3D?=
X-Exchange-RoutingPolicyChecked: DJ4HsC1MPrkgOUAJbOHm8FANfvkeBlotTTx5Sojyee6lZdwyNL55597p5SkOzNDYyHogdke8TW7ZqxUrUQXd0oOcr5zA0RGLeYQpoddWt+gC7+R2dxtYFTSH+F7x/RyE5bb1NRCNswAf5HhIHOggm+9zWuq2CJUAMes7T+TFFTSV0Srk+u1999vonfSjaqqo3E4pVspOXOaJYqQOWWWOm3sY3v8HT82UInENqXok/hB7r4LTNlC2bs5M82qtZ8M/lXPpL/UraomgRdbCzMm+TIkRTtzJBXtWF/QPpVHgpGANHLV22NBKR/E3TQ/wzPVel1uFhmVuW/nK8RspkGg3EQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 89325a3c-8639-4c5e-cadf-08decbe33831
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:49.5673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OsgE+PPAN9rC9FlZbceTAbTxtQYEN8l10AjamKtm64Jr4QMQoSNxJCfQVwSeyqWvsJZxYfUgpUSA8HBzcVvLsQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE994B740C
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
X-Rspamd-Queue-Id: DEDDE695189

Add a helper to reset the link_caps state, removing all restrictions
except user-forced parameters, re-allowing all supported
configurations. Currently this only resets the maximum link limits,
but follow-up changes will also re-enable configurations previously
disabled on a per-configuration basis by fallback or other logic.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c        |  3 +--
 .../gpu/drm/i915/display/intel_dp_link_caps.c  | 18 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h  |  1 +
 3 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3b3c31122452d..b63c6f047f83a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3610,8 +3610,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
 
 void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 {
-	intel_dp->link.max_lane_count = intel_dp_link_caps_max_common_lane_count(intel_dp->link.caps);
-	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
+	intel_dp_link_caps_reset(intel_dp->link.caps);
 	intel_dp->link.mst_probed_lane_count = 0;
 	intel_dp->link.mst_probed_rate = 0;
 	intel_dp_link_training_reset(intel_dp->link.training);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index ae10200bdd934..9b7da5a64ee25 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -351,6 +351,24 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 	return -1;
 }
 
+/**
+ * intel_dp_link_caps_reset - reset link capability restrictions
+ * @link_caps: link capabilities state
+ *
+ * Reset all current restrictions except for the user requested forced
+ * parameters, thus updating the set of allowed configurations and the
+ * derived maximum link information accordingly.
+ *
+ * This function is regularly called after a sink is connected, either
+ * for the first time to the connector or after a previous sink was
+ * disconnected from it, and intel_dp_link_caps_update() was called.
+ */
+void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps)
+{
+	/* TODO: Update the maximum link information. */
+	reset_max_link_limits_no_update(link_caps);
+}
+
 static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 7baeb4359d2d4..fa45a46723059 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -35,6 +35,7 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps);
 
 bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
 			       const int *rates, int num_rates, int max_lane_count);
+void intel_dp_link_caps_reset(struct intel_dp_link_caps *link_caps);
 
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 
-- 
2.49.1

