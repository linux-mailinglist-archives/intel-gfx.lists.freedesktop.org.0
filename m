Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICoRE5gnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:20 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E100919AEFA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:47:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BA8310E879;
	Wed, 25 Feb 2026 16:47:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ktUYBXYf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 978EE10E879;
 Wed, 25 Feb 2026 16:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038036; x=1803574036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Z3E4RZlafflE+4885bJ9A/pZk/4kHCNDgsC3TxWKD+k=;
 b=ktUYBXYfVGnMeEDkxP2065hEy3kZNDyl8rWJL5fy/OoMV185vKcDBs7f
 vXKNkbjuaRsl553yNmblzLmhowiiE058MSXabY6LeMQmxC8hCDEVNsm0J
 UfmoJwbLCZcoJDnH/gPtguLsnlaAyk1nmyzKGrdqCacY7dK9fprU+sEc3
 WETj1I86qajl7YJNsbfxKp8xjfm8nn4k2kwBsG83liKDVUJQVgv7FBmz5
 yh/2RcnMI5XYZ8IE4n1wEK02aDCksdlh+FdtAI0B1HNUkST+7RIQ66IOb
 W1X0lIo/3TcKRwyzOy4wxI6qxkEDwyHwLD7tIEigTDK4rGLTqk4HVBA/K w==;
X-CSE-ConnectionGUID: GZPhtd2pRgqF0H0tcRLBuA==
X-CSE-MsgGUID: 5QjVdqADTv2kyQEZqrJLSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="90495921"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="90495921"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:16 -0800
X-CSE-ConnectionGUID: bhs4d47sTQ2EPYIau7IR3w==
X-CSE-MsgGUID: aoTUArhtTGaRVgKcfzOJFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220424334"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:47:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:15 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:47:15 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.8) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:47:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eDsjC5W/mwKfbNhpNEaiFyIUhcEiRK7QAnRSVO5YwTr3df++CFf2BhnotBNpO6ui+xxNRUs+ehi8bvRKXSy3oK5/x+Jm3PoWwIDOC9ZpqXaoTmhlzj1ZgKZjc2vS964/zz8waubJzgGFw/UyrmwW5Hf7uYqh7zfIFqnCakgByH5QpcCdGt/BrYwDvnXy52x810oRZ2PpadzD9siXtKPzLCSu0slpZm1I9uT145wL9FrdIqpKDW+anVnvt4RbjqxIVV8WOIWOFB6zuQa4o9I+ZJcpMUuqDLZSREfGSZAdQhetLwSw7emxWDvvJDnvW2rYCEFlT7R9oUlgzzQGpA3ukw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/J9QzhHzIgI2BDv/4sQZDjVr88yuXskN1BUs04mZDuE=;
 b=OgLayZ/NDpcrD1i/lnciqLMukmhzHjUvFeYxyFWJW+6WxmBewNnrQxyYc15/AlWgug+rEEcRi7OmTQhWgjsASAFtXRiB7HsZezl9ZnjyEWESO3IwgKelnQ3eDfFQshArLXoHUwMiUKWeDJrwTnrsHwhTXniLCwlYSWw4tppy41koC3PzHbyGRUW3y6Ib5DokkLH3AkcbhNA/2wZKFYgWoHbzQmP3gRmpq9nguBSYosnlxj/TxERscQhcavWWBuideLqtuBxyaY3J6LyC0VLaGyyWqj99kuowo8w5tJUfK2NJNEQKOYRt9Iw2R216S71TFjbbviRu0ZaBsTO1MP4VlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB7449.namprd11.prod.outlook.com (2603:10b6:510:27a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:47:12 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:47:12 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 20/20] drm/i915/dp: Ack only the handled link service IRQs
Date: Wed, 25 Feb 2026 18:46:18 +0200
Message-ID: <20260225164618.1261368-21-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 534d2ffa-ccce-4947-1152-08de748d8623
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 7OHOxVXtgLX9Vv9k889m2iyF3QhZ0O1wgRDm9W8CvjqHUA7tvb9zrfhvZXSy8WSwQh2RgLuOF4sBSvkTGfrAJeSMitOEeG+ktslZawx7xUsAWqZM5r7nL1JCMTW6PYDp71aJsn1E/v6wL/5ANl64qb/sf6rSt6bUup2uPnuorTXBOzFJ20IYaqZed3zovUrgV1RiU3TFNOUhogbiRRtkxRvHInUasCSTmDkUqiCZyyBOTDwmnN6NTEydyBxL0t3zcw7ClD+KkOgAwmbjWVW4U3LiSHpn0jKpCovxh12RVDWNkn68deFp1yyNf2XV8kT0caAEL1WYsqfnYF2vunrLHFzzLDI9nRA/O88f3OY4bUvKPhSDFZpabqBCrAEUHpFnwlQP8adIlQHgJHdM1Zi6+U8KTaC+YiV7g5BOQBckQPctZrzjXcSqtHTOPFxSDMlniWDzXzQiq0kW+LGxMI5f6cP41G9BAi5FFK5AaxwbtOTuVtw+jAMmsTILLIFEOplp7K5Y17ddFT4I/JzVjC8TdgV5L9sswONKrlmCo6+b2fk0HsRKuHrcajEcX1JbAIUxzz3JSGNIT7Fmgxv/I+u3tSn+GK96GoTuK6M5VPpgAbNUiOxgKiQ5PxmSSOdAJR8RtOa3ZC1jO1qGNLoXWNbVPR2OW/27YvygxiFt6UL18K2ZDdMcaX+VzS2OtI9n8Lorw+Gme0XRlBYnyNd2I5Yny9hVtzQr0V12UuRb96HD43k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7hys8hcS63llbYVa36SNLY7JDo6n4cDix9yv6Gzy5Ul8CQP5k/JzU5XDeHFB?=
 =?us-ascii?Q?BhreAU0YZc1+r8gYmFADv1IxaPWEt7YMu3tisgkTdHsKzunnM5o+/YvdQl9E?=
 =?us-ascii?Q?YxKBj4FyR5pGQ2BfWlNM+tktyTLFPL/lnCi04zn8WsgtY6/yE53BpPpXTdcP?=
 =?us-ascii?Q?Ir2JR7R83b7gYGlaXZ1NR7/hUYFjsgIYXj2jZpYZPxxnzSm9/nTQbl88glFN?=
 =?us-ascii?Q?MAOhAcFaeOiFRJgDBFIN36YBncaWAVB/pvdHCKUV2U/fDGHNICTzrMwmQyPH?=
 =?us-ascii?Q?bpgJ2zymcICpPwew8Pa/1PllS1S8WBf31zQxmznczyJe2f8TzUPLBOVxyluR?=
 =?us-ascii?Q?Oovduhwf/A3Fmkgt2ZXlEmjVYQUlLUYlRmWS2WDpCzSJELvAhzAOjwMQbUKm?=
 =?us-ascii?Q?vnMETGIliIQLnzKZXz2JeWes5PA4ojGSSGEdiKCTfdJL2q2HQ48OB7bu3YXs?=
 =?us-ascii?Q?dQ6XgEZoWq34SoY2IMyXCdqjpgge/aCDfOzfr0IEnIfB9nt8ThwkYmbhPeee?=
 =?us-ascii?Q?5j3rE0SJ4t/Lg5X7/tdSMIpcXCn9oTFAHRMBdNorAtqiK2qCe6gdoRl9+7G4?=
 =?us-ascii?Q?ij9IFNYJelubZo6wbhcWGBmi6sKyAKDrAF/Phae4eOb1TLwYyrG+f3qT8bG/?=
 =?us-ascii?Q?QXMp9jlDafRBIM57V4Hdb08pZL35IqQh9XRlev3lEUsQxRz+Ng09TjASdR4Q?=
 =?us-ascii?Q?mEkeX3EKa1mg7YjbgB8Vs7f+utjBS01+lBnJEtKLMNKMxkbvBek/s8ancILT?=
 =?us-ascii?Q?/HTv+Yh25FxJOcoNMFM1czKf7uAzvKSn1J8dpIw0RwtDTIQGWYz851JuuSgh?=
 =?us-ascii?Q?0VYSub0n4IiY3T2X9BxAmUVDNFiWCtqTnreSmOzD5I4IuZE8ffTdryOiqSVK?=
 =?us-ascii?Q?bzprycp0sd44lmQOTLXAIbod39pPEhvtNUugPozR0Oj/xK6AGFmfZ6qPX2fB?=
 =?us-ascii?Q?QbF7XwWXYFDSy849DTCMMNebVfJhd/gGeNe4VT6Pya/mCHGMWRWnJY9eAvyz?=
 =?us-ascii?Q?ao0ekGX7DjDE2ELm46AnUB7hijkp0HE+ai6/sbEZUm06aHJE6NoGRJ8HcWNB?=
 =?us-ascii?Q?i0GxtpIfSfJ065DwSWwUvr2qXnEeKEnRGMHqMZdL7cSfDKaDaupWoqSxLs73?=
 =?us-ascii?Q?5FY4X8kpGXmG/Li1OsYOHQgbAHtWrdm5dDEO90XyN2slDUkttB0u1odS53x4?=
 =?us-ascii?Q?01u6adhUx+sxs1QsROE/AL3JkjMo4SqvLJGruoRJ+D0GmNJoTIiKq+P0uSXZ?=
 =?us-ascii?Q?Fpx/JXVPF2G8aRWobqU+51sOdYDnphoX+TF2J2SR+d2HYaOjRg5zmxu9DmEY?=
 =?us-ascii?Q?VW5CJSP8pLFItYxm/HRS9W4Xttip5BxtxiIoFHOyHK1s+dlGq53mpIM+jZCZ?=
 =?us-ascii?Q?RjYtDqTCIbqPaEy9vY09wvETy7CjL9xxcSWqa2wkXn67eYd0Zr7TwtcJLzH2?=
 =?us-ascii?Q?pVRummFdT+mQPTkzJ9ucBsNJ6dEcrlSIP+dMxgk2Dg4tgeSbQ2ahAMrDZocj?=
 =?us-ascii?Q?GRJpWLQGQ9oOVAMduFvpbX9Qk8/VzOiP9ABdPaQYlpzzPB0vpik9YJ7RoTvi?=
 =?us-ascii?Q?65caHmtwLtJnYdVtb7iPgUk3lyzZ/N7GuWIlL8kns/PixHazNpgRwSdP7BRZ?=
 =?us-ascii?Q?AEgHqToGOAwv0PYeBlQeSvdgv4+ut61FwU3IowJ/2Nn1JtOOGhOTujRYxBt/?=
 =?us-ascii?Q?7S4wGz/JAJ/rQt97ZXlJqYOYJAhf7wrN2N3GCw4sjwh++vhdiltREJVip/W5?=
 =?us-ascii?Q?fCL4ei4L4Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 534d2ffa-ccce-4947-1152-08de748d8623
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:47:12.5067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E7fVnw+UYBmzobPDj/M99P7OmM4UrbGuSG5/UnDRsKVeIVF9Ki5Ahx5HOy2ekimDkW3BJKEPTd+UKIZP+tUqGw==
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
X-Rspamd-Queue-Id: E100919AEFA
X-Rspamd-Action: no action

Ack only those SST link service IRQs that will be handled, similarly to
device service IRQs. While at it add asserts that only the known/acked
link service IRQs are handled both in the MST and SST case.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 866aeeb8f4614..b2fe0841ea420 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4924,6 +4924,16 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
 						 DP_DOWN_REP_MSG_RDY | \
 						 DP_UP_REQ_MSG_RDY)
 
+#define INTEL_DP_LINK_SERVICE_IRQ_MASK_SST	(RX_CAP_CHANGED | \
+						 LINK_STATUS_CHANGED | \
+						 HDMI_LINK_STATUS_CHANGED | \
+						 CONNECTED_OFF_ENTRY_REQUESTED | \
+						 DP_TUNNELING_IRQ)
+
+#define INTEL_DP_LINK_SERVICE_IRQ_MASK_MST	(RX_CAP_CHANGED | \
+						 LINK_STATUS_CHANGED | \
+						 DP_TUNNELING_IRQ)
+
 static bool
 intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
 {
@@ -5022,6 +5032,7 @@ static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8
 		    esi);
 
 	esi[1] &= INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST;
+	esi[3] &= INTEL_DP_LINK_SERVICE_IRQ_MASK_SST;
 
 	if (mem_is_zero(&esi[1], 3))
 		return true;
@@ -5560,7 +5571,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		ack[3] |= esi[3] & (RX_CAP_CHANGED | LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
+		ack[3] |= esi[3] & INTEL_DP_LINK_SERVICE_IRQ_MASK_MST;
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
@@ -5568,6 +5579,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			break;
 
 		drm_WARN_ON(display->drm, ack[1] & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST);
+		drm_WARN_ON(display->drm, ack[3] & ~INTEL_DP_LINK_SERVICE_IRQ_MASK_MST);
 
 		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
 			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
@@ -5877,6 +5889,9 @@ static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_m
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	bool reprobe_needed = false;
 
+	drm_WARN_ON(display->drm, irq_mask & ~(INTEL_DP_LINK_SERVICE_IRQ_MASK_SST |
+					       INTEL_DP_LINK_SERVICE_IRQ_MASK_MST));
+
 	if (irq_mask & RX_CAP_CHANGED)
 		reprobe_needed = true;
 
-- 
2.49.1

