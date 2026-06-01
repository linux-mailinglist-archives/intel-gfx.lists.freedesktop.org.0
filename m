Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iG8GNEBTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4580A61C95E
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE2E81130AD;
	Mon,  1 Jun 2026 09:39:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bu1LT1jd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61DCE1130AD;
 Mon,  1 Jun 2026 09:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306749; x=1811842749;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=9BgM8yfNznUwQMicFQIv94IDoqQGzJMh96Ui2Zfscsc=;
 b=Bu1LT1jdwMibhmBjc2b+GqQLorxt6Je8RVmhoBeCDTVoL4Y32p+22LWX
 OapDLRDwmlwtgXkkzPtNPkGCbtz3uCxBP9JMBgToiZwdx+HZ+RFc19f/s
 5csgUh0qCNdsLJuSK/wLzrGTBKKnCHJgRv624hIuucTw6z4dNld9jvTLj
 xZ+F9myLsMEo7+OyvMGPuMr9B93LqQK8XHTn9Y6B3NGW3p6p2Tcc5jBtK
 Slf0K3jIBk53q0Lsr79oY1m0G4B+Fvq3J72EGxYwFhNUqlQ2ryzvV41bu
 Vn9VfpULPLv7QpXwbDJ3LyO7Uutb14bLUWi0Rco9PBYlXsSua6nchWSeS Q==;
X-CSE-ConnectionGUID: WXwKtHsaTSGzaj97yPSFwQ==
X-CSE-MsgGUID: Jx+ziafXSZSjtGAtQqhK1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80200564"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80200564"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:09 -0700
X-CSE-ConnectionGUID: YBr4+3dCSGOKHYXxrpAAHA==
X-CSE-MsgGUID: lO5YiQuHR2KVPK4AkiFV2A==
X-ExtLoop1: 1
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:09 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:08 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:08 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MTKoMh66UG58eyIRISyfij5jl3YF3W0k1fjgZymPUXDDyXRl56QgNQfAUAw3Bgid8qNQZznel14H9vVDOAqp3AgToEDd+qXfAl/MqRqHkfFGNZdBuNRmA+mInkAERXPbZSA/1bv3kaOrNkZ9YMmfY3oG+MpFx70IErd1iOV+0U7fvyTxdzOutTV36UAyfWU3cjQsT+ruZFFx6AHA1mljCSI6QCCp/z+DJl85u+O96ODdfYRME5KoSg1nM8+ps2t0+nLGY0KSp70aeXZv2mNx+XOTIS4lEd7niZFEiS5Mkz3h9H46eUDxjftnTgHqjynzwPwUIAD+loI1uwY7uEtNrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tSbkbN+KBjQmVfU9qhNo5JrP0VeCjW83s+FwmKoyrnk=;
 b=nQ6PzaCATUTXg1lKD3/2jKPyRCL2702ej+SRNvXr1tKZ8Xq2JEYyjv+LUppIsGXL6Y0VZe0WOdLLHbmNAr0zIQF+1j7qsJ6ET6XCjy8XZybbKCCHcwTVyx9yxTLV0zTz9nO6wOIwUtXIeW3RgCN71lfLeNcSLRwtyqUdPdcV4GQ3G4pKGdxOmCwAiOfddrUIrDyEtZfT9l4S/BdYZGZt3T00M9TBDkfLgnYYlRAo1MbiN1eB/qp08Swv9V7ckO9fnUi2OLDHFQQEz03ApH24xPTmt8j817ptopr5oeoB6/aM/DtWDq7Rie9cuetIkY79rlMFuRXTXkOlbF/aPg8LBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MW4PR11MB5891.namprd11.prod.outlook.com (2603:10b6:303:169::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 09:38:55 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:38:55 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 01/22] drm/i915/dp_link_training: Introduce link training
 state struct
Date: Mon, 1 Jun 2026 12:38:14 +0300
Message-ID: <20260601093836.3057345-2-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MW4PR11MB5891:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e767080-be77-4160-0a13-08debfc1995b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|3023799007|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: LVdjLyEYQsiAwtOVFoIsT7XWZbkR1aOdCRL070kRk33NuSAM3OPrMaSD6QnVgPwS4G2aOaEToj22wegod4Y8SRKFH/qn6AlBJrBI2pkGsFXXz3W3tU8a0DWxDg96Sk6Nw1Zap+D/u+AeAeGQ6yzaEopdeLkwfEo3O4iYmRau7Hzx4NktAjRlkRbC1dg0lfV9Lr9/wtF4hTTc2ToH1rOsdXOO8oYwUegAK6RgG4aQyfT8LzE0NNDKuRYeEn1LOxoUExb8gukg0kmnmShVb5qGnbSZfXGVr8mbw1iahoz0t6FFCBTn8Sr4g9DIleeztIta+fcXNgbaSc/a/QwVwn3UK6lSqUQQZVL+AoE/r2fsFruO1S1QlHNwJ/rLw4yuGr2oD26FCP3Pn7IiULAqVPKcXFq+fsFGh2D6w9PPA7A/oCFed9WalGa88rLJv2UyPPmb44urYn8XQS1Rg4nrc9AnK21qu9Pg6/MNfPDl6D89qX+7Suf98TE8PggIuOq/jEAyHhPX/uCCAf78FigxM8NfhBxj5TfGfDwzs0zcZrc2NYfQn7PEwig0g3IO90fpgBlUGU/ZBPX9JAhtx18FxV5W9hsC1HmO5wrK3bQ7Og3ZTxqHUZsdfmpqa5NAEwxLt+1+KI9PsHGOWGRAGZYxseBBvKgy6eT49HkigKCzALB94XzMXSFXQKaiG9wVn2yWCqHE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(3023799007)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?L3BVbVJR1fdrtqigCkx4OYdlGPszGHRXBgxbqvfchnzASebquaHAyMRcVji5?=
 =?us-ascii?Q?6GppZ7ZiOwA0VOA3guAM5cf+nDQe6p8w4+ihzlqPlF+UrjGMQdZDXj4Ic5AX?=
 =?us-ascii?Q?wi0JeOpHaXgjXzL0OMMkKtmHNGk2HelViYrViMSIBMyCS844h7bAu4mC1J/K?=
 =?us-ascii?Q?d8iZWXLCVkGfczFA7oLf6Z19qwomgAl/p2xFizO6Pv/GDFfPNQMfMDRCYZui?=
 =?us-ascii?Q?Njez1pzmklRb43C0MpZQb5WHvSYpZ/hPODeze3SwJ7IwSsCC0TrUnYXINQam?=
 =?us-ascii?Q?Y2XcWa43d7J94cJ/WXfta8J52iULPtmhKVDdYRqa8jj2ziJAryOOnQlOQcDy?=
 =?us-ascii?Q?EdiM7wpfvMtnGfcqCoLNJLAkvQg1xDCKm7EngHpIe9AnlX/UyT1IVov77UL7?=
 =?us-ascii?Q?nS8tC659zQWLZ/1WiLWZHnjf8T89jqM+5mZFnCv1XMPa6pwOsXgAc0a8f+nl?=
 =?us-ascii?Q?eUacMueBf2wm/sSrQob/Kb4J5AJ5qVuSookcKuOOmaxCyx20TjzyZ3Dcygrm?=
 =?us-ascii?Q?z4WshD8YuJb8u7POP4spIGJC+T/dyukx6MwvxCs9+g5JoFr9lN9VfjACg76j?=
 =?us-ascii?Q?3yRNia/6Tzqw1df1OvMyoUZjff9TEQutTbs0++43kVojt7VtL+WAouzu5NAV?=
 =?us-ascii?Q?howq5HvK3GEemjA3TYuT0gDBYlfTKjjc+MgSdsInv3ugRt/CFbkfynONtzXa?=
 =?us-ascii?Q?NG4xXcnGgOgHQN67Ou9RzTG/V1eQM984WrevfKMSPT0XL4rMpLeA6pN3hgJM?=
 =?us-ascii?Q?ro/7ssw257V8YlirXScVppYAYHMJn72Ep0330yZ50zxukgsjIhqiV3KcGHaz?=
 =?us-ascii?Q?Bpeu4vF89rmOGBBuS+ESFzZyw+dhU6XH5e2Ml+FgbRvuMLCDRFJxaTpMQv7Q?=
 =?us-ascii?Q?UJo+YMslF25bB7WhZZPH4IX+AP07m/JPerRB9vHovJETm0/luDhPVjf0uTFF?=
 =?us-ascii?Q?1f2mfZ0mpWP947FEZvgnXK2g7uPv/nl0gSAO5Wmlaxgc7rWflCkHEEH7loJF?=
 =?us-ascii?Q?mkrQ9fKDYfcvLei8xgphyntyEoRv1LdEM7U2xUFM3tc5MuINuxdPxI3yoBdw?=
 =?us-ascii?Q?5oxjMByg41J27GbzgdJj/RJilKPQr4zodyJL/ttuBYFsonJKFooq4BFwTHO7?=
 =?us-ascii?Q?tpZxH5a3wybdmMcFxLKdHCjAqsRH26+m04DxRoX0tLw8wU0ceO4uKYVSNjAk?=
 =?us-ascii?Q?Wu8jGFy4AfovG8aAwMZ0rBpv39fkVyL9CnORWk56B90qkiolP1+/rVwCEzuT?=
 =?us-ascii?Q?pxIGYuxoG/BVguzURL8eIQ/is/hXbVaMuV6czwPyQKig9JXB0T93pkHeS8vo?=
 =?us-ascii?Q?koC6l5Zdcj+y3DMEd36v3e3cel+ffBTWYzUdgM9d4ifJy9rimnRM0tnijf5J?=
 =?us-ascii?Q?LZvW/o5mGRlw+EdtsEF0w/7f2AX8YT+otSA1wW8Xp5Z/FIfg9slQMDlcyhMN?=
 =?us-ascii?Q?OjvOcNHrPT7I/5W6W+77Zna7RxI4Ov94vrQGw7j7aafEBpI9dpHCkZelch2u?=
 =?us-ascii?Q?5UXr0ZnVei9fyqoon1IjQXo9zp0FDHaLQT7WNyTzJRSgUVXXDk9ovGEYCilL?=
 =?us-ascii?Q?V+3ej+XnhMbdMsFtJ66xtUj88nglOMPnZD3YooIa1JgHOGW3hD+93IR5uqlv?=
 =?us-ascii?Q?zY+2HqaTGC6BABtSwxh7qiQ9ZBNEYZL7xgw06jF6sLxt8E7rA5tX0iJ8sz3a?=
 =?us-ascii?Q?CLCmAG4RVMX3uudfdpX9thy0BeLjfDseDnUzPKBHkPaZrkVhfkNo0gJka/gT?=
 =?us-ascii?Q?wApaekb1LA=3D=3D?=
X-Exchange-RoutingPolicyChecked: UWtnss8eaXvMwEG+Xm03fkjVfU2NR/ka2mfLOpSkXJZKUpjgR+nk9dbhgipl4uOUWzfYjKYUKAZP+zF7f8VHP7ia/HK6yP+cZnPqFVkA/hQEVkKSHZpD2uEFVJE0yBy8Y1iIwncUrQhZaG+3CMXXruiUCSvEcZnXr2oDSrCLS3brc28qdwh5awZo5fXiWRgMqhHhUblhNXZ3cPae6hT/Rur+gMmF+sUzEzJFr/GpAoeJvhPNdLDT+zR7Y80uijnAPg2KeUjEvHXaLnDRO/QrnMD1lZAdKFzaqVMwRjTHJhVshaFB/kbxuI35GskirgLIdkN2N44M8JUUYlIp32xPGg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e767080-be77-4160-0a13-08debfc1995b
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:38:55.7843 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TfjATJBf7eblsTEqnKsjk09BXyv9DlE1tO1dGAghIuBfU9NrMFeT/QDZJtLtOoNiYqS5a3aBDorbhRjpjKXHIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5891
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
X-Rspamd-Queue-Id: 4580A61C95E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Start isolating the link training state from the generic DP code by
introducing a separate intel_dp_link_training state struct.

Allocate the state so it can remain opaque within its own module.

Follow-up changes will move link training fields from the DP struct to
the link training state.

v2: Remove unnecessary function documentation. (Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         | 10 ++++++++-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 19 ++++++++++++++--
 .../drm/i915/display/intel_display_types.h    |  2 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 14 ++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |  3 +++
 .../drm/i915/display/intel_dp_link_training.c | 22 +++++++++++++++++++
 .../drm/i915/display/intel_dp_link_training.h |  4 ++++
 7 files changed, 71 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 5ff1cdf4581a5..d211e6c49e0a9 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1252,10 +1252,13 @@ static void g4x_dp_suspend_complete(struct intel_encoder *encoder)
 
 static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
 {
+	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
+
 	intel_dp_encoder_flush_work(encoder);
 
 	drm_encoder_cleanup(encoder);
-	kfree(enc_to_dig_port(to_intel_encoder(encoder)));
+	intel_dp_link_cleanup(&dig_port->dp);
+	kfree(dig_port);
 }
 
 static void intel_dp_encoder_reset(struct drm_encoder *encoder)
@@ -1350,6 +1353,9 @@ bool g4x_dp_init(struct intel_display *display,
 	intel_encoder->audio_enable = g4x_dp_audio_enable;
 	intel_encoder->audio_disable = g4x_dp_audio_disable;
 
+	if (intel_dp_link_init(&dig_port->dp) != 0)
+		goto err_dp_init;
+
 	if ((display->platform.ivybridge && port == PORT_A) ||
 	    (HAS_PCH_CPT(display) && port != PORT_A)) {
 		dig_port->dp.set_link_train = cpt_set_link_train;
@@ -1419,6 +1425,8 @@ bool g4x_dp_init(struct intel_display *display,
 	return true;
 
 err_init_connector:
+	intel_dp_link_cleanup(&dig_port->dp);
+err_dp_init:
 	drm_encoder_cleanup(encoder);
 err_encoder_init:
 	kfree(intel_connector);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 205978c9feb6d..6399b16405c87 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4654,6 +4654,7 @@ static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 
 	drm_encoder_cleanup(encoder);
 	kfree(dig_port->hdcp.port_data.streams);
+	intel_dp_link_cleanup(&dig_port->dp);
 	kfree(dig_port);
 }
 
@@ -4691,11 +4692,16 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
+	int err;
 
 	connector = intel_connector_alloc();
 	if (!connector)
 		return -ENOMEM;
 
+	err = intel_dp_link_init(&dig_port->dp);
+	if (err)
+		goto err_dp_init;
+
 	dig_port->dp.output_reg = DDI_BUF_CTL(port);
 	if (DISPLAY_VER(display) >= 14)
 		dig_port->dp.prepare_link_retrain = mtl_ddi_prepare_link_retrain;
@@ -4708,8 +4714,9 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	dig_port->dp.preemph_max = intel_ddi_dp_preemph_max;
 
 	if (!intel_dp_init_connector(dig_port, connector)) {
-		kfree(connector);
-		return -EINVAL;
+		err = -EINVAL;
+
+		goto err_init_connector;
 	}
 
 	if (dig_port->base.type == INTEL_OUTPUT_EDP) {
@@ -4725,6 +4732,13 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 	}
 
 	return 0;
+
+err_init_connector:
+	intel_dp_link_cleanup(&dig_port->dp);
+err_dp_init:
+	kfree(connector);
+
+	return err;
 }
 
 static void intel_ddi_cleanup_dp_connector(struct intel_digital_port *dig_port)
@@ -4733,6 +4747,7 @@ static void intel_ddi_cleanup_dp_connector(struct intel_digital_port *dig_port)
 	struct intel_connector *connector = intel_dp->attached_connector;
 
 	intel_dp_cleanup_connector(dig_port, connector);
+	intel_dp_link_cleanup(intel_dp);
 	kfree(connector);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c21e0c0ef0b12..b34848b6ad45b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -58,6 +58,7 @@ struct cec_notifier;
 struct drm_printer;
 struct intel_connector;
 struct intel_ddi_buf_trans;
+struct intel_dp_link_training;
 struct intel_fbc;
 struct intel_global_objs_state;
 struct intel_hdcp_shim;
@@ -1858,6 +1859,7 @@ struct intel_dp {
 		int seq_train_failures;
 		int force_train_failure;
 		bool force_retrain;
+		struct intel_dp_link_training *training;
 	} link;
 	bool reset_link_params;
 	int mso_link_count;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0ce0c09835f6d..7a9157849159b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -7642,3 +7642,17 @@ u8 intel_dp_as_sdp_transmission_time(void)
 
 	return DP_PR_AS_SDP_SETUP_TIME_T1;
 }
+
+int intel_dp_link_init(struct intel_dp *intel_dp)
+{
+	intel_dp->link.training = intel_dp_link_training_init(intel_dp);
+	if (!intel_dp->link.training)
+		return -ENOMEM;
+
+	return 0;
+}
+
+void intel_dp_link_cleanup(struct intel_dp *intel_dp)
+{
+	intel_dp_link_training_cleanup(intel_dp->link.training);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 46a7f5c70981f..27cc95a344936 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -243,4 +243,7 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
 
 u8 intel_dp_as_sdp_transmission_time(void);
 
+int intel_dp_link_init(struct intel_dp *intel_dp);
+void intel_dp_link_cleanup(struct intel_dp *intel_dp);
+
 #endif /* __INTEL_DP_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index e566f2b49594a..9ab18cc806397 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -62,6 +62,10 @@
 
 #define MAX_SEQ_TRAIN_FAILURES 2
 
+struct intel_dp_link_training {
+	struct intel_dp *dp;
+};
+
 static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
 {
 	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_caps));
@@ -2233,3 +2237,21 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 	debugfs_create_file("i915_dp_link_retrain_disabled", 0444, root,
 			    connector, &i915_dp_link_retrain_disabled_fops);
 }
+
+struct intel_dp_link_training *intel_dp_link_training_init(struct intel_dp *intel_dp)
+{
+	struct intel_dp_link_training *link_training;
+
+	link_training = kzalloc_obj(*link_training);
+	if (!link_training)
+		return NULL;
+
+	link_training->dp = intel_dp;
+
+	return link_training;
+}
+
+void intel_dp_link_training_cleanup(struct intel_dp_link_training *link_training)
+{
+	kfree(link_training);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index 18c34c1a472fa..eefc6df8bc853 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -12,6 +12,7 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_dp;
+struct intel_dp_link_training;
 
 int intel_dp_read_dprx_caps(struct intel_dp *intel_dp, u8 dpcd[DP_RECEIVER_CAP_SIZE]);
 int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp);
@@ -56,4 +57,7 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector);
 
+struct intel_dp_link_training *intel_dp_link_training_init(struct intel_dp *intel_dp);
+void intel_dp_link_training_cleanup(struct intel_dp_link_training *link_training);
+
 #endif /* __INTEL_DP_LINK_TRAINING_H__ */
-- 
2.49.1

