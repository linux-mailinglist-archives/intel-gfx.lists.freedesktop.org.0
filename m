Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDDZMJYnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:18 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BDAA19AEE5
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A005310E87A;
	Wed, 25 Feb 2026 16:47:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fHr/DbKv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3061E10E870;
 Wed, 25 Feb 2026 16:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038036; x=1803574036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=WcOvsvoYTkiWeewqVn4on8lwIC55JbT75IGJ9Zm7aw4=;
 b=fHr/DbKvXbL0f5Lac5Rg7JgS4ZupxjQpl/4wbSDtnvIXFX48lSzhAukv
 0UVeW+sbrjAcHqkwZd2L7A3PRdoZcWp1QEhe9bf0TyS7OvGdl66uA3ivO
 A3D+xUQBLuSp9BoiZa35K2RgaVnN17nO3V7xDWazkNDY4u15aUd5JJWbi
 RUwfHBIGpnyJKFB1hWzZ1BmwvwNDF2vuXYr0pPFpxa5ncN9zSEIGQFrnZ
 EV5qdiczQRgWiqvVofcIaboacv0rwMffwuD1unPOKPdgGNgnNJ85nifzz
 qdrzBdddO0DhA0r+Hup0mvF5ufx3hLKDYhLPRYidjdIS+E+O+77B8C6BN A==;
X-CSE-ConnectionGUID: yKH/HovdSGeBZZOc+3HXQQ==
X-CSE-MsgGUID: Ufa/rmRlR9mmjTsnPGzsiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73259857"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73259857"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:15 -0800
X-CSE-ConnectionGUID: i8AEc9VYQqO0dt/qkulluw==
X-CSE-MsgGUID: JFYrkiYuTMSQskeuAGc57g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216433412"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:15 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:14 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:47:14 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KG2ou79g5uH8WJUtoVHHleg7l+9jlBnSdHWULTFf9P3M04t9rraAukYH/hgzBvc1iyHrd7qyfomy+qVIgnDRmYznLaGdpTDCUsIZvukvi21dDQWTYUtP0pecD+MPogT6n4FXm9rsaNoYbbJgD5gXyX8oEsK4IOyL979V+TU4oFccjZh2d21PdzCYuFFnQI+vDqC6NCeCI4S4aM9vyVpveXboboNdRlMcIbniueQ80+SmadWNWm7PrXUtIR1aBEk51YFPkfPW1DdFVPLEuB4i7AQyNPjRLKYKMLWPcb5Av3ZzvRIdxjClHXONH5EZ7wnUwypKyezmDo/rr3tunrm/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LDMAFSvJZ+h1tK/HoDIzjJiWYfPlRnnsO+smHmyEKzQ=;
 b=quqh3qNnrtJqEOimalERLOXISqaWlLU1jGBfPLMOR8JtO0QKZMnvRYI+hJ71ocOwZJ++vLLheWjuU4aCFUhFKTmPDw7CuuksSYvB2mrxN43pJHS/KJoGAY4O4vSPS4Q9PZwhrz+Xj1Ugpl7zgihwWfmabcc8TLJlR9G2s+dTkUlNVmTggVdWnbjUFliWFu9mnbrZXjLRXWWwt5d7splYX0Jzaunl1mDXQmL2ZMszlraTw6dUALuBrHj/V5lB+xwNko5BlU0pQV5F/8RdSaXka4/N12+7uQrMJe3T9/oV43avFwkvzqROBzGzUW6rHnqNRVOvRHqc42JiVwhFyNUijg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:47:08 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:47:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 18/20] drm/i915/dp_mst: Reuse
 intel_dp_handle_link_service_irq()
Date: Wed, 25 Feb 2026 18:46:16 +0200
Message-ID: <20260225164618.1261368-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225164618.1261368-1-imre.deak@intel.com>
References: <20260225164618.1261368-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB7449:EE_
X-MS-Office365-Filtering-Correlation-Id: a62eb84d-f16b-459a-eac3-08de748d83eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 6L4Ug8jCOhXfF0TOiDvMx3Xnz4o2HJbCnimHET18LBFq117DXNcWs5BX2ZQd/33prV/QbKflpSzJZWH0KG2VXNZMkhHaAYG1cf8S0d6Wb7xfmfBkBqQ11ZJNHz8YA6mbn7wF/zBRQYKHd85kZRFx/4NG7R0vdMhMAkky6cqaZLnoGuEAp/nz2xcJx4Y397BVacuCsnqJ8LdzJHrqMMDvwdVqN9/V4VqPZowsxOtPSlGGCqgXdWjDDVDHXkltcYe51PXiLSZaptdLm0LlaXP5ugogtvW1ja7BzzwVD2tpJ65dD4Mq1du/XmZzJdhCpqsKogc2zCrljwcCc34jWde/TvUm/orM6SUZMEHEdo9PV2d8SS6FfahjhpYnVWMExTRFOF9eRO1BpPQzFHkcGWjiG+ccxRdeyB+iHEILD6BHdC29BauJ0avDoMWeJ6ca/p6RAk4XMPumdf52dMMsZb+ITlx4BuIFteUOGwVveGmgqzhL4x0MxuD6w4abVdZnQfoWwCrXyQ3rNTV2cLkMmwt7OJGp42Ts0Ssd9TwNIQ27w5HzpgU1iqVn8GDI2IGi2XqgjdU8R9X5MkZRA7nyTbfIgoTSpECpx7Tejs8XpqRnRMX63XNaFC6AO/atMUZSgM0rwQcyGU7qY7qNrEen0wAl33avcLUq0As6NmtWUDhidogpS1sUm7DOu/q0favsUmy00ZyaA9dO+LVzYYT4ob1W08aEt6WbJs90RF8MqaFLYZ8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fG8yun4Onxuqlo5td1CPaNf4geLasI4vA9P7i5qSEsYv5XWm70cL3tFdbABd?=
 =?us-ascii?Q?deq0TWfa+42GB5uOSqqE9L+iqZb9JZxT0srV2lyVKCkyWluwhLqRzrez04Pu?=
 =?us-ascii?Q?Nh1qdgVUm6szCA3otzeKyW2g5jWSwgWaNaexnGhn8oVToPGpNpqvpk1tUfyc?=
 =?us-ascii?Q?AFuCJt+/UFl+XXVUfXbVw3OJRc8+v7JMTD1i7tW7Wl/UYRQPTaNCqaOituqf?=
 =?us-ascii?Q?BG0ye3mbfhzX7CgLtk66fzCDt1QrFfOGpZxFSp81FeJ5nvfA71Yr/w0TeCcT?=
 =?us-ascii?Q?uqQJy8fASNb4bkrGkq/7up1ZXbmnYA4KW8JgGBIbRDe4RVkvO5F8g952G/6i?=
 =?us-ascii?Q?ndlf46csg0T1ZWtAAioaMMJ/yRePsKiMy7dFlZSeJ2mCu2J/dHjqXHoFTjPB?=
 =?us-ascii?Q?DFji4NE/dPjNI/jTy6Pt9Csg0hfe3Wsv/w9iSrYzUqcjw8vAf8qE8N150Sgw?=
 =?us-ascii?Q?TWfILLnGMm8SrGs9Zux+5LAz+femzDaM7MEnRAkJV85c/hoNyRB2eh/X7tNy?=
 =?us-ascii?Q?AcKNUKl5M5pmeYIBBSSby+xwR6yBOkknJR7uPFerf60n4XfeUr+KUmL1gxBR?=
 =?us-ascii?Q?1hj7BHWF9EO8/fvE/C/tg81UkZ77XXTI5IG3VdJKBwKE9Po9EnIb0xeS3RsT?=
 =?us-ascii?Q?YylrtOLUrs+9IAwnokSc448ECuaEYAv6OeTKg/XFo8lcZQxtE4vhcn1QAuzs?=
 =?us-ascii?Q?cn1XQMsLdwjpEIhk2OJtEpQtlXQzQENWQ11YDHItbW9y1LlR9djuUSb1Hkyr?=
 =?us-ascii?Q?HFLrt66HcdP95qim2T27eTLl0OCZ/93KM+HNHmR/UPJ+HI3zZIMmKpxvdIGQ?=
 =?us-ascii?Q?Rq9LEHoe6xku5O0NvkHmgPgqWJlZY0dnTn8TKmRzdOpe4SHPRLBzYbZCs78s?=
 =?us-ascii?Q?9qWEgGQ6juFmczxFF2PsW7B8vshXfBGrwv8HYb2kCPDn1QRZqfk8SAiwEk2q?=
 =?us-ascii?Q?TCopTG8Td3apu51Dwnqsa32mE5QSeLHzGz8ljgOKSoPnyJz1frdi63EKmOpM?=
 =?us-ascii?Q?u85UInOo+9n4iiBOLoJKhFmQLWo613/XGeuT0FCbPrK0uKeLlLJyWEnAXD3n?=
 =?us-ascii?Q?tHbQDVkP3JiMk8xmzJmfSdYA5F2lQwACiIOldc5BfU8WBC/N6H1WbrvYOzCj?=
 =?us-ascii?Q?4f8ddO0Q0R/bFiT/mP74BSviWV8PNBGxNlULZZ65b7/3d2poA8JF01WrGmaH?=
 =?us-ascii?Q?+/FElyWJnS9Q5OI6VzL1Eg4wpq3ouKfwXA11FF5THh1Tjajvkxl2L3SVPseJ?=
 =?us-ascii?Q?HzvWgsQLPsW8gSosnnnG5AAZj/s3oy0CxHgvNRVpFkI6I413eNl+ml2zI1iM?=
 =?us-ascii?Q?aLc6Zf7c0/eTXpQPMrt8yjYNrpzBD3FInt1mSlmwQqFdFu+zR8ErvL96ViKB?=
 =?us-ascii?Q?mHy/S+zonHfmYQA98Qnfy1J1LyljE8xgVbF/uHH7ocn26ISr1LLfTwONNmrB?=
 =?us-ascii?Q?s3YukS+V9Y1aRV29UwDRK4e7TmmZhWposD1y6z5p6Z2b95tTxNRNEG01eS5Z?=
 =?us-ascii?Q?S/bwy6QaFaTwrChmkj+i4eTHNT6LuR/tSmuw6nVK1+qalJtqB+sDauHIcMM9?=
 =?us-ascii?Q?EJWBQmSyWfs2PwEcfp+Pp2DueSbqIb3FToii08HCF9UTwfcgASwfMfp8Iv0E?=
 =?us-ascii?Q?xEZcd6fCJMmEJdMCxrubVW8PMH3rbbEVRsNMPKZhjmrlBVmojkKbsmQFMkiQ?=
 =?us-ascii?Q?sY6x9W4lhJIaeH6mBR2UMCnYyBXrfcPQDxQLsHueum1ciovmu5gBXAuI1Zpe?=
 =?us-ascii?Q?tfnATFIIWw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a62eb84d-f16b-459a-eac3-08de748d83eb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:47:08.7292 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j11ahkHwExAOXalJeznE1w3UiBja/UIvfyPIUFIIuU3hwH/4oo/zeyN3bgdTRtnDCOZKvND0MP1NfxSMQrtHdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7449
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
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5BDAA19AEE5
X-Rspamd-Action: no action

Use intel_dp_handle_link_service_irq() while handling an MST HPD IRQ,
instead of open-coding this.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cecfca0b0bb7a..05e3071f33e27 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5514,6 +5514,8 @@ intel_dp_mst_hpd_irq(struct intel_dp *intel_dp, u8 *esi, u8 *ack)
 	}
 }
 
+static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask);
+
 /**
  * intel_dp_check_mst_status - service any pending MST interrupts, check link status
  * @intel_dp: Intel DP struct
@@ -5561,14 +5563,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
 
-		if (ack[3] & RX_CAP_CHANGED)
-			reprobe_needed = true;
-
-		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
-			intel_dp_check_link_state(intel_dp);
-
-		if ((ack[3] & DP_TUNNELING_IRQ) &&
-		    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr, &intel_dp->aux))
+		if (intel_dp_handle_link_service_irq(intel_dp, ack[3]))
 			reprobe_needed = true;
 	}
 
@@ -5871,7 +5866,7 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
-	if (irq_mask & LINK_STATUS_CHANGED)
+	if ((irq_mask & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
 		intel_dp_check_link_state(intel_dp);
 
 	if (irq_mask & HDMI_LINK_STATUS_CHANGED)
-- 
2.49.1

