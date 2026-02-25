Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEGWKZQnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D6019AED8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8371210E872;
	Wed, 25 Feb 2026 16:47:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BH4n8qOa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECEF310E870;
 Wed, 25 Feb 2026 16:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038033; x=1803574033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=uZX7ef2lLD0CB/gACK3Bl81uRPN+elbO32VsBXb5O8w=;
 b=BH4n8qOaOK/YP0i3M9x8AQKnY5E3HncpejdpgPRE9AmsNV9aNwIAItAk
 ZeYqZwgTwYxj2U+AUUkaefRkLdB12EqP6xKxCKADCmbkfMWRyvoRu2P8t
 ntdZQqjBri/LDzFxkV173MuXGqSgYfNKdq0bdcmgKMYD10djbtFL5WCOH
 cmNuMVc1y8hJmzOwO4YYW217Fp12RlUAxwpGCF2yyCJcfP7OpqxpmABoV
 Ty0dTko0phybDlXWMLpo1xqVA4PfOsQQMfdupHB/l+jf+C2AHBVJlq7if
 Wd9nhShvKWhS1mFeETsFP7wUdjVn2RlwujKaGNA8VTV+AylEwf8V+I8nD Q==;
X-CSE-ConnectionGUID: wPltYIhwRyONL2nVuZuqpg==
X-CSE-MsgGUID: HL+CJKsNRhe0Ah1nbjd/OA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="76919833"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76919833"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:06 -0800
X-CSE-ConnectionGUID: M7TpWfmKTtePmZ5HsgSi2Q==
X-CSE-MsgGUID: 8Q3SZCASR6Ggl4UaNHoMvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="254044973"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:07 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:05 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:47:05 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UkAjt+CVDlU3s4pHupZqxa2frwk3NAp9eajIz56RwMngLI3tcSYnyk5Jc5fZ6dXjXZP/43sxC99I/My4WPyFNoccA9DYnkmslyzsa1812N6bxjwtB452xKlQsPCEzMY6D715Muavjbx3Pc0CVJSwzPTLCWe7GumWDwXpWRgMRwU9hKwj3SSRV39EB7fi1mEI7igdsewdzPCu1D10Fe6J+boIN4cDIWNNXtHBhPWbzFbiwRyRbJrotB2EkSULJ+Iax9qBLRjSuWUcezt8ePdgnaQsdmWtAPiYS/MaS3JP403V3i1TYm5flU7BVKOlTSPhrBb9LcOnP8Zn3RJcYthWdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ZCWK7kMFIdw0r18qXOZ9xccNMUPfAZ/AP0I4riGXRE=;
 b=leE8v4qzCbusCodgaAcPmpQ0RStUL7mCJoFglJYyEp5pcjq0Cpq1JFNSLzz3r8XNEGWZd+YrAyVWZW2FpbA/TOiqVpdLtEjaJ/DL3v7FKjP5pLZdwCBjRTpRC9YwDKcVHE/ofPAzu8JaRR82nlrIeEWJT0wDmEkLjf0W0KKuJdK0dDub3kGHIfplaI0uD+qyznFkQLB9h9ksY/rUU7DXm7EhSNRG+TKj6+WshP2h0F7xZ9UYIrnYlChIpGUPDsLJpJOSLSh5BjAEcb8YKOh+wKhsauU4ZxBeUgL7sz5ADQv3nKTmSm4ZQx8JTOLTY71DgAqqhzJA4iwt4v4RSylXiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:47:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:47:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 15/20] drm/i915/dp: Read/ack sink count and sink IRQs for
 SST as it's done for MST
Date: Wed, 25 Feb 2026 18:46:13 +0200
Message-ID: <20260225164618.1261368-16-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: cafd449a-0de9-427b-6c8e-08de748d8080
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: +b9zge77ndBTSjJoBXU/iu9uOgSZLIOTLO2kfsstX5lADqPCylp8UixpDlGlwmKb18hIems5q77m7+huS1N18C30VQjY1wlVHWIAEFlcArFtJinywaK4lgJ/+OHKtiWpoLOKSsiyzpEd4U1jNUb93zZJYKLSWAAxDccWBC74IgakNPa0ceK8hRP2aGVrT53U08Xc6J/IBuLMSxHKTl1wlUUrJAH74NEvcNABAHiGVRDq6IqdfGru+3X052NqJ5bTiYPXeEJDcjMi6OYvEYUKDP711I5OFg9dr5edAU8BhwIj3eUSBuAqqaka0L8owL5tSAw3I/GRQn65BZmgirr+KT3HCdzVohlWDCEyZoS53q8LzSNDLThXQVM8fhR+XgiZZ6qPoDISxZ2iQnJKswXUG8+IPZJykg010csrKBLv73gj0+oCd5KIVPz0Sc5QfNlZycEpcFoW7fpTV7wOKoFMzG+4QXAnfQx004k2tuJ8LY0NnUn6utvZUT4B5F2XtFhdJRcWcjIqPtZP53s+SbJ628NgiIlgzt2wmilCkVC5PQq8gQqPqDuqSwR+YWiZf9icAUk1SmBLN4H54lmi/4VzNLqo/68MvAO4D7+vjBFyAPhdMXVjxq2yPGUAzl34g2UupdcPqYKr/3RaStGQRqieOBHdNIB+P9p61/xZy+Otl3iUVrA53KHNmBNhHRkI5UBra/Y+lJ9iAbA+VnS0hOcs5t85GXMsniWg18URhBpo6sU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3pu09xiq8eh5SSGqn8pvYulffh2m7NTbmKmx24CAFzsOAsMfTjqF8ynY7V2V?=
 =?us-ascii?Q?zn18R7aqBXWhjI4DFcrtsNcnHWhrQN2q0A9OTB71YPV+4Z+xPjJzdDkfGi2z?=
 =?us-ascii?Q?2/0t6KeovMrY1fJVY5bRAuHBoMwpu5tPcC5ps+k2UFDyq6uIBwovDDVW7HAw?=
 =?us-ascii?Q?U5bCwwPtSj+sFSrM5Un3ktdh5ogSg/LK4oGOX8dYI4CfBOf27JjtIDkBewo7?=
 =?us-ascii?Q?djuYcNxgUXK/g1xbMNRqlMjH4uq/6rA6S5eT2QHCF8MGoQx9XcqwNOR82iDM?=
 =?us-ascii?Q?IUdl9bHTbxatw+A3I3GO/GJ1b3b0+V9+daoSZ4d9Pt4kR0zjwZdJx7N+LWar?=
 =?us-ascii?Q?QhBIXVq1NLY+ue4zUe1ai1BKKQWcrnE0yndPR2Y3RGRtbZraG8oPA4cq/cII?=
 =?us-ascii?Q?Abk8ix5gyOm94UV5eXto2AY8+q5iiS1lgEOtdQ1ZAd9Wt8EASTzr++KVOyoN?=
 =?us-ascii?Q?wCKGjiRgTm0HaQ32zYsTv2WF+JFsaigGnl94VtBlfuY6ikSeiiAGwoi2NtO7?=
 =?us-ascii?Q?HlHQ9w6HAdk7VpFIMsGCLdzTL9lBwBbfLjBLzZlGwaQOrjBTgQbv5BVdOwOT?=
 =?us-ascii?Q?isf31gjuVSMrxzJPzbMC7HQ/Ve0oizzoRQXtmwKIdnz4hP20xfzX0+BDFmmJ?=
 =?us-ascii?Q?oFbCYb1FsKzcjqitvZiXt70TN6WT28ZqOFG0bL4EkdKye6Ku1WRzCdM2KJv3?=
 =?us-ascii?Q?xQDTzVxMUl3XWnnUzSIKu2mAJ9HQM68NHgbt8oViZH9+bH5tY00NUWTXFdMX?=
 =?us-ascii?Q?8lLbQZ69X9nCGT633/zBxjtF2h0EqJobpn3ocm/U7rRGYfrrOGlctd8Gj9/+?=
 =?us-ascii?Q?FyD0YrsApkMW2BRVstXpAePmllSdDdj6uGM6mUp/+m8StVZe3/3h6QNHVrWb?=
 =?us-ascii?Q?NIQoNi/3JTKXZqHyDt/jzoONobVbVPNqAUvNG/AFUmQtg677ikVnty2QMs3N?=
 =?us-ascii?Q?DRPq2ziiIq10AlBU3C6oSw1h1RgLLfRiMHDxuxXxQtTEsBy6IFS/mHi3JJXK?=
 =?us-ascii?Q?7QDm4dcg6OGaaoZqYDS3tN0+zFIXEZM4XISiXcLV1UYtkXzdVynNxqS6K0Uc?=
 =?us-ascii?Q?hYDX9evlCIg40U4JBSm20aoMjqq/OLirzpEPvvsenTCIdhMwdg4U1wy1nJi/?=
 =?us-ascii?Q?GWeRgy/LbRu7iRL7r/EMiE/C6mPlM0SDD6pA1j5OOH9Yo7+nTvyeV5ITCusE?=
 =?us-ascii?Q?AsPgJctDacamjPDlqGBth381yZPFTAXUg2UG4PRwvPayH51daup3TbniQo3y?=
 =?us-ascii?Q?FZA4ERT5jDyfSUzgoPL5bssQS2rAAfRM5o70UF+hzwvzu7CVudZEiph4uf48?=
 =?us-ascii?Q?Phf5RVXyrhT/beif5QMLZfRGNHxDURxorwXZ6+t76dvgjXDIKNuoDPEK8040?=
 =?us-ascii?Q?om4Uoo5o6miuM5rgEOoDi4hXXLAjYge+6TNup0KYOoptnVaIZqLT/54LrCrG?=
 =?us-ascii?Q?RqhAdbUuelwpkFYBPCkzMtjn6sl0omwrm8451ezSbiDiWS5gCYMbVtEs0GHr?=
 =?us-ascii?Q?MsscQQvU40X5RcKF4f/lX7rVDAei7pryDS4hSaI8UawsRaHcIalRHESpdfWk?=
 =?us-ascii?Q?XXlKrCtsXTzKoy4E9InyNwpOg02pn7L3hJo0MOKQHDVbmgZ8ZA1K+MI3Vpwc?=
 =?us-ascii?Q?3bcAWubEM0X+8yvUmoX5kd81x8qyp9w3BhvFtM9CYvbA0cRq1NQ2kD3dcVFU?=
 =?us-ascii?Q?zomD8iNA0s1lGnPm73PYUQFJMhEcoqljm5ILoPi78r8fYS5rvBOi26nfYC8Q?=
 =?us-ascii?Q?WT99O7ouNw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cafd449a-0de9-427b-6c8e-08de748d8080
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:47:03.2030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vvSTx7pB1Q9GXl5o8Kdw2dg48vRhFIHfAsRFVuJVi7HNo+p3a3Zq4r3BgSSPkzW7ksh9A5Byljz2MM9ww1v+/g==
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
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 45D6019AED8
X-Rspamd-Action: no action

Read and ack the sink count, sink device and link service IRQs for SST
the same way this is done for MST, the read/ack happening in separate
steps via an ESI (Event Status Indicator) vector.

The above way is more efficient, since on newer (DPCD_REV >= 1.2) sinks
the DP_SINK_COUNT_ESI..DP_LINK_SERVICE_IRQ_VECTOR_ESI0 registers can be
read out in one AUX transaction - and the 3 last one written in one
transaction. Also this allows sharing more of the SST and MST IRQ
handling code (done as a follow-up).

For now keep the current behavior of always reading the legacy
DP_SINK_COUNT, DP_DEVICE_SERVICE_IRQ_VECTOR registers and not reading
the DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 register.

v2: Document the ESI vector get/ack helper fnuctions' return value.
    (Jani, Luca)

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 142 +++++++++++++-----------
 1 file changed, 79 insertions(+), 63 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a98170f2732cd..595a2232ed718 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4952,6 +4952,76 @@ static bool intel_dp_ack_sink_irq_esi(struct intel_dp *intel_dp, u8 esi[4])
 	return false;
 }
 
+/* Return %true if reading the ESI vector succeeded, %false otherwise. */
+static bool intel_dp_get_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
+{
+	memset(esi, 0, 4);
+
+	/*
+	 * TODO: For DP_DPCD_REV >= 0x12 read
+	 * DP_SINK_COUNT_ESI and DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0.
+	 */
+	if (drm_dp_dpcd_read_data(&intel_dp->aux, DP_SINK_COUNT, esi, 2) != 0)
+		return false;
+
+	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
+		return true;
+
+	/* TODO: Read DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 as well */
+	if (drm_dp_dpcd_read_byte(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &esi[3]) != 0)
+		return false;
+
+	return true;
+}
+
+/* Return %true if acking the ESI vector IRQ events succeeded, %false otherwise. */
+static bool intel_dp_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
+{
+	/*
+	 * TODO: For DP_DPCD_REV >= 0x12 write
+	 * DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0
+	 */
+	if (drm_dp_dpcd_write_byte(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, esi[1]) != 0)
+		return false;
+
+	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
+		return true;
+
+	/* TODO: Read DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 as well */
+	if (drm_dp_dpcd_write_byte(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0, esi[3]) != 0)
+		return false;
+
+	return true;
+}
+
+/*
+ * Return %true if reading the ESI vector and acking the ESI IRQ events succeeded,
+ * %false otherwise.
+ */
+static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
+	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+
+	if (!intel_dp_get_sink_irq_esi_sst(intel_dp, esi))
+		return false;
+
+	drm_dbg_kms(display->drm,
+		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] DPRX ESI: %4ph\n",
+		    connector->base.base.id, connector->base.name,
+		    encoder->base.base.id, encoder->base.name,
+		    esi);
+
+	if (mem_is_zero(&esi[1], 3))
+		return true;
+
+	if (!intel_dp_ack_sink_irq_esi_sst(intel_dp, esi))
+		return false;
+
+	return true;
+}
+
 bool
 intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 		       const struct drm_connector_state *conn_state)
@@ -5772,31 +5842,6 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-/*
- * Return %true if a full connector reprobe is required due to a failure while
- * reading or acking the device service IRQs.
- */
-static bool intel_dp_get_and_ack_device_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
-{
-	u8 val;
-
-	*irq_mask = 0;
-
-	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
-		return false;
-
-	if (!val)
-		return true;
-
-	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
-		return false;
-
-	*irq_mask = val;
-
-	return true;
-}
-
 static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -5811,31 +5856,6 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
 }
 
-/* Return %true if reading and acking the link service IRQs succeeded. */
-static bool intel_dp_get_and_ack_link_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
-{
-	u8 val;
-
-	*irq_mask = 0;
-
-	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
-		return true;
-
-	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1)
-		return false;
-
-	if (!val)
-		return true;
-
-	if (drm_dp_dpcd_writeb(&intel_dp->aux,
-			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
-		return false;
-
-	*irq_mask = val;
-
-	return true;
-}
 
 /*
  * Return %true if a full connector reprobe is required after handling a link
@@ -5877,30 +5897,26 @@ static bool
 intel_dp_short_pulse(struct intel_dp *intel_dp)
 {
 	bool reprobe_needed = false;
-	u8 irq_mask;
+	u8 esi[4] = {};
 
 	intel_dp_test_reset(intel_dp);
 
+	if (!intel_dp_get_and_ack_sink_irq_esi_sst(intel_dp, esi))
+		return false;
+
 	/*
-	 * Now read the DPCD to see if it's actually running
 	 * If the current value of sink count doesn't match with
-	 * the value that was stored earlier or dpcd read failed
-	 * we need to do full detection
+	 * the value that was stored earlier we need to do full
+	 * detection.
 	 */
 	if (intel_dp_has_sink_count(intel_dp) &&
-	    drm_dp_read_sink_count(&intel_dp->aux) != intel_dp->sink_count)
+	    DP_GET_SINK_COUNT(esi[0]) != intel_dp->sink_count)
 		/* No need to proceed if we are going to do full detect */
 		return false;
 
-	if (!intel_dp_get_and_ack_device_service_irq(intel_dp, &irq_mask))
-		return false;
+	intel_dp_handle_device_service_irq(intel_dp, esi[1]);
 
-	intel_dp_handle_device_service_irq(intel_dp, irq_mask);
-
-	if (!intel_dp_get_and_ack_link_service_irq(intel_dp, &irq_mask))
-		return false;
-
-	if (intel_dp_handle_link_service_irq(intel_dp, irq_mask))
+	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
 		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
-- 
2.49.1

