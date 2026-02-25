Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KOCyJpcnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:19 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3704419AEF3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BA110E881;
	Wed, 25 Feb 2026 16:47:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NHlnxqoN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9B0710E870;
 Wed, 25 Feb 2026 16:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038036; x=1803574036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=AqmHtxiSE/BKFraL9wnUTCImyLs3bsNgcYz7gqA/e1k=;
 b=NHlnxqoNBchjmCXbgennmqhOGE1iNtjpyBR9jMlDrDZlBHdEI85/DmGG
 u1BkCAZ7yPSgH3R6Fx3MLFYumqjdZb6Ye0p5wNJDVnLY7LExUWkROwKhJ
 MaMeXsQpMamgbq+HHFLL3/BsDbS4k0WmBWuwdsiePcqdB5tutXdsKHx0x
 ROyX8yPo8wGvlONkW+LpBIjlIfIDMbqyTrbiXQZ17KOiNs6nAQWfmtQ1u
 lNUIGoxTlAtIh+LbeJXhSQA9RwOSdzw7hnH0/Q039krPDB1EB/EDy3g7l
 KOdWxDPFUyUXDlFU16TGWYNudu3cWiKHnLzINS/bvup6KBOUuovn8EmQV w==;
X-CSE-ConnectionGUID: bogfbUn2S1aWz2WYmu4GZw==
X-CSE-MsgGUID: M8E8KOc9QSeXKpkSC/GtUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73259859"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="73259859"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:16 -0800
X-CSE-ConnectionGUID: AsErhDDTSViA4iOMmI2Plw==
X-CSE-MsgGUID: pEmb/VeZR9CYpI4LSym5Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216433417"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:15 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:15 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:47:15 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qMEjuqQXfdNHTm71DX0ToLEAlBEtTCNwW2vfgFGl+onrKT/F21ly/pKN9WN5bEzew1VcSYx4YE4h9kc1UvK7rqF2FmZ0C2cWRRRggNKAhojAEBefj1AwDT52W/IVHDAwLEdq0FAeWjrpLiscLNLes5hf7658w8jcJVR3SpeW6aWsmmUfVsU+PHp/MMzxbCU3bx4uyg/Ou4b9SmXJ4Ld0IbJVTb8Be8RrFeNvL/aQxjaXinStS1xwEkdjiVOe+G5WFZmrTJmA3nLz3PPZyj5tckx+eRUCPUoYYCAVTLNByVcbH2wc16iX3b1yjqMt66CGYCkmcW34RalDBgRF6ZWecQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eNMft/JXp2xGZ/EFAiZ5mOf/FjXQqTDUETyt6w5bcco=;
 b=FirNcjgpKqV0kKOYZyfJgxxwXuQTHx6yG8INXD/3ofYkYd1/XF0Dw9OgFmR+EKNpGSpIHM/OgvJJrq3r9JkYCXsfFqk+MHHGdddlvJqRYY7aD0kG553mq41Uiv1XLxmZ6IqvDJsZ0b4CGz1X9u3tyolsxUuhT5TR5eReB5ZsnnLtj46T7XrOUtCDTf7Q79946CRC/shRhED23fZjTIi8Zi1kxUn5d0fMpCX+jpas9mvS3sEIyweb34pWtXi/ksE2j35rlSHye+zQ927WQDner5ufLjusf6OI/Vqg84A5iPDpbdP51afuHXttm7nXQADQN2nHL8MCaufI3XK6OAmzlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:47:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:47:10 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 19/20] drm/i915/dp: Ack only the handled device service IRQs
Date: Wed, 25 Feb 2026 18:46:17 +0200
Message-ID: <20260225164618.1261368-20-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 15309b79-2a80-44ea-39e9-08de748d850b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: E3FHzXKq8pgCO0niiiOhYIYLGs9ERwIi0KBbVUhoO30MDDj4ISfjJjUxoo1Svq7m+vfwaL5c6soOWlEPU0ez7qf7ChsbVNEMzL8vvNQTLV2cdfwfEIkxb2nVOSSJXB4GtC71HPOWchHFsnIWdqtnj6QsLatOfdN72Lh1p3OR4+fsZWIei1yYWLfx8XrniEyob/eZYeTeh3+CN8nO4K3eq1SOXE4sAcrig+Y5ZhcPEy2iXwAoxpvNfFZgFdPL3XEjpFf3gbYV38sz1o03/OdDSr9V7HwUQoyOybHlV+SzOZbpnZnhPcEnlrTN2Rfwo1uxxBMAyxgg29bmfTOqjko5McamA5g29IXW8LLDo9FW2YZGqFunXUFyXTYNQAp6tFM536ulHL9dz1FKbLUGc1LYwXEpkUponaF5wAPZSW8DhpgkSHtdg3HaFS32TiTOAjvcl7q0Wir3NRahfymnQzcA6MefqGljTlxBFtUHdxWxmM6vuODUVXOdW47ABeH2ZFsECbSPrAvJcva003Fa5rsY0KEQQJmBqX6+4UBUYqtVOysorkDTcWtOQaOgnsGDyPOGfGCLabCIVJPtbB9OvfG51Vyf5lX2NMLkQmHq658rsYi4/eE77xnZDztETzlCQ1/WmRa/o/Q/b9A0TmrWx/dGJ4GpE6OnCcBG7WUf1x/CpzIzxeVefqZdCTpDgeqgI5fE9m0v/KcQZBT9YsjmEXibumDoTMkaXQORVqhVMekQQNU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hsd8ftIfJgkYKhh/uGtcwkf5PJJIkVeHP5FCtRAbfcP1Q1SL1VPNyHX3c/1U?=
 =?us-ascii?Q?P/5PtJkkH4boy+HohX3qqs5JcSc/6kPpCITz3hGUkeQpf/bSAaL9OSkPqXm0?=
 =?us-ascii?Q?Anmhx8CG6exX4ILohIqOFlFVm8c3jMl7ig96nnD9gFsGB8iCqVLPpVD4d+qw?=
 =?us-ascii?Q?hsmwLDCusHKJt1JgRfxMcdJoMWRC96LxFwimEtJqmKP6mB081/jFyGrW7MSj?=
 =?us-ascii?Q?ItH9K6E7i27rnSxJyj/4xkEJ4mFp1rDlfxrrqoKnlYN4mJbjPK2BxlKRJH3j?=
 =?us-ascii?Q?hqe2A+jkBf0qTOWfJy4/pp8tuImpNoIdNKSrSiIy6wV3X96wOAdwZwx4GlvW?=
 =?us-ascii?Q?4Va/rJwHsZn021ETy+woDwN/UGXs+OwZYkp2fXKoc1vHRDTta6pyaUGKYcCZ?=
 =?us-ascii?Q?UURH50oqMlniZMTmLc/mR5TjAIe80SrQcwHhMgbp/FMGNBu0cFutpGKnnngL?=
 =?us-ascii?Q?1lrU0MYq7P0H4yW0cu7x9u+51xhukORUVHtFAVpQfv64QcQvubklG4yOGkcD?=
 =?us-ascii?Q?+LNdTeHxuZ8C99ORC7wOIKx1myf89DrKorOMfn/ruJPC4STEK3eh7oVtxiNu?=
 =?us-ascii?Q?hYrK5Lw3b3VBjNfLHq3pFIU9309FcXJ9a/PR+o86PRSYzshFljvdB11C/tBC?=
 =?us-ascii?Q?pzfTnD2j3CgsZse+bgmPKJked0fC33iikQUoOK1ATtmOIyDJ7h5ksJ8LdoNo?=
 =?us-ascii?Q?g5+aRE44t7zNi0gDUoYTVEG43kQlbX8fNEDhCXH5UldKDf8cYEGhXctWBU3h?=
 =?us-ascii?Q?XZ49t19o6tzwrlcnAfvgsn9qfqsPhT/U7j5QlXpzumeCLSvDufVOE/Hqpu+A?=
 =?us-ascii?Q?Jy9wFkYWxOkhoFfFmcliTOU9tzIiUYDdwQaZZBKvUB33tEsLLIB9pUAaz6oH?=
 =?us-ascii?Q?thX3zY041kDvPaZSOKrq19PPKrCR7jifyjhLcd1LW28F6bvFB9PxsT/OUahv?=
 =?us-ascii?Q?DRPrKbEeSkWq3dns3ruj0zAbyYhIyoMrQEa/IQ1Ww4W8rOlbGBHebkwmWqm7?=
 =?us-ascii?Q?NJE16TVWiBaOgWUeQeOidRH/V9vFpP3IbSZbm2LjC56ZAdBa7wlFi5PcuwgZ?=
 =?us-ascii?Q?c5b4fOhlp3g37KmbszoKXZShiK3RXv6Vba/1jTDWk/oR8gyz29uVhtNazNEA?=
 =?us-ascii?Q?Ok0xo3f1dmQmz8p1r4Ay8OzpilyIwz1wnyctXm4K5UL/Ei5zI0J8tMpR3Qgr?=
 =?us-ascii?Q?2PE2Mgp8RNt8xhIlA5nwbBjkC1zObSe3HFy5XR1uKGHuXJAg8SxhvG4Gxd1g?=
 =?us-ascii?Q?UT5qqj6QTSBCAYdLL0HLd8F8nSeZWBlmGUpw9RLoVjLjOC2/3rvzNrNvqzz7?=
 =?us-ascii?Q?RnUoi6uuAtN4wwlHv0rCazQHJzU76eM0FLJRGy3yVW24t6IbhEPoBCa0LL8c?=
 =?us-ascii?Q?ybvnpmQ/TmMyOz5Z21E94lBjvXJmwPyMplTT4xOFviygczdkfMgrGyjEbS1u?=
 =?us-ascii?Q?5tBq7encvePG/SCSigC0hvQf6VZO9WcRuwq+kNCr8LWQ760+hLPCYLLqTssX?=
 =?us-ascii?Q?iKzbMAbwc+tiQwL6MOsKesf5zYlUS68Te53KnySpCfMJ7+iQ4A/Q3XNtC5fa?=
 =?us-ascii?Q?nSUuq1RmkaRmklNRXmyYhMDUIEEvgAIriKWQio+ut9Fc8KNl2Hfj/g2ggmoC?=
 =?us-ascii?Q?eK5ecdVb8LVrjSqfwD7XHPDq6mAabdIAohOXcGYwqA7AFhCYoYUaY50iElkO?=
 =?us-ascii?Q?vZ2VoO7+A0rRQbjeQKqZnVZGiZ8bzyKQm+2wYa9pT4ruUnvbgsNT4GxFJAfu?=
 =?us-ascii?Q?5JzwZRUMPQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15309b79-2a80-44ea-39e9-08de748d850b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:47:10.6169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hii/jhlsCF+4rvScMqny4rwjD7bmROzISv8e9vaDd3rmWYsyAFAJ0Yk7kfDcdIl7s/38VxYJeM39hI6/Jfwo/Q==
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
X-Rspamd-Queue-Id: 3704419AEF3
X-Rspamd-Action: no action

Only those IRQs should be acked that are handled, however for SST all
IRQs triggered by the sink are acked. This can be a problem for flags
that are reserved/reading zero at a given moment, but become used for
some purpose - with a side-effect if set - in a future DPCD revision.

Fix the above by acking only those device service IRQs that will be
handled. While at it add asserts that only the known/acked device
service IRQs are handled both in the MST and SST case.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 05e3071f33e27..866aeeb8f4614 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4916,6 +4916,14 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
 	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst.mgr, intel_dp->is_mst);
 }
 
+#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST	(DP_AUTOMATED_TEST_REQUEST | \
+						 DP_CP_IRQ | \
+						 DP_SINK_SPECIFIC_IRQ)
+
+#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST	(DP_CP_IRQ | \
+						 DP_DOWN_REP_MSG_RDY | \
+						 DP_UP_REQ_MSG_RDY)
+
 static bool
 intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
 {
@@ -5013,6 +5021,8 @@ static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8
 		    encoder->base.base.id, encoder->base.name,
 		    esi);
 
+	esi[1] &= INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST;
+
 	if (mem_is_zero(&esi[1], 3))
 		return true;
 
@@ -5557,6 +5567,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (mem_is_zero(ack, sizeof(ack)))
 			break;
 
+		drm_WARN_ON(display->drm, ack[1] & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST);
+
 		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
 			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
 
@@ -5841,6 +5853,8 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
+	drm_WARN_ON(display->drm, irq_mask & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST);
+
 	if (irq_mask & DP_AUTOMATED_TEST_REQUEST)
 		intel_dp_test_request(intel_dp);
 
-- 
2.49.1

