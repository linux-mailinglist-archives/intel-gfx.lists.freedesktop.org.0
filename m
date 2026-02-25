Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CXHKD4jn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D34C19A9C2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 944F610E7B9;
	Wed, 25 Feb 2026 16:28:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VPjHuJC/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6318010E7B8;
 Wed, 25 Feb 2026 16:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036923; x=1803572923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=a/Z/u4Db/6MCtlDChhXbBlZAYWviusbhSBLGF7Ftg2Y=;
 b=VPjHuJC/6ts9MfDJEue51oy8KJ0XUlMpRcoJdJlMM46mtT427JnXF8pX
 EKk5/40mN8ZMlN22lP3wQwBUtIlpw7v4yc9leOFEDaTZpus1sKJIpTBEt
 tmNNWZXvyCpxvHmzWduqdHHvaE66cVmtb+f7gr5Ku8OL9Xe9MsJgzCrOw
 4VCgksAEsYFx+Vwg7t/awRL11rkikNNuz9xu+7MohZ3L9/0X6bzqH/NHO
 KnGwyYE1c+rZMnjqxgmF+EzWK4rWmJ6SOBjKI08k7Tahkmcv6vs+2KGq5
 OUYG/kAZe+LlgNV4AOZjfuwvlqUV5rJSLESLsq68jyVxPEVGWmxTlRG0e Q==;
X-CSE-ConnectionGUID: knSSm4GURlqXRykIaMl8Cg==
X-CSE-MsgGUID: zBP8KTxwSq+gL3aWRT6TsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84175851"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84175851"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:43 -0800
X-CSE-ConnectionGUID: Go5GpY/STFynOvviX4JAvA==
X-CSE-MsgGUID: Nlo00XzJQharVunqO5madw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216425780"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:43 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:42 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:42 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.33) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yl18VMm33UzXa1xONR8Xan/WQc4Pd1/E0dfaLaxnwMAjxs9fSol/pftumM8TapTRhs7/PnxcX1n3tdfPX6wZnRyz7P7Ens5JMGLqkV3ZQn4OEMaK3OY+bIYGBc8S+byoRW+jJOvjDc5BOZzxBBqOjFwhKZiyjZGW4hLRghjbkTntv8OvubUxfjxqfVZLJjU3LimTP5wjuHEegQ0wDz/mbX34DSWLKM5LwZL0EjA8LC4k5L1ztMljs15SxU9ZTfIEv4fOHBSoAp56Yc3YFO0G4bdhsfL4rX5+0dEiVz79SIr1arVG9fgy/M+DPmuRrfZE5/oBhFSU74aFIgEfnYtArQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FuStesBfmnGr98cyy9zvwN+3HNExM96bkRarSmkN/JE=;
 b=BbmMVwMPdvIhK7se9ERWZgIJdsUvtpsJZr8rDENILlMDKb5MlRoUGUWwctEn4o5yW0SNYuxF3pYBLZGi3jhzTEMnNf2IAH9GNhSpxFJ8W/47gauCwn+DWLdGOYu+UEs/+pnIS8dEH0KtofuLU+tU+pjgT2KXF/vPFAWeX8ljcvdK8UBGyLl43wWpfqcU28fzeSDJZQqE4HOmjWUabf3SZgrFcDle4MCZ9nBdb9xj04m3XKRczrTiDBE/4tO8GDQQ4GWSIklZY89KVQfMCjVcmM8YssU2XY7UB8DcHirr03zQIGpD3Fee5SoQe0eBHzEU+hPN/7iwI/Tjmk7sM64zqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:39 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:39 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 04/20] drm/i915/dp: Handle a tunneling IRQ after acking it
Date: Wed, 25 Feb 2026 18:27:35 +0200
Message-ID: <20260225162751.1255913-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225162751.1255913-1-imre.deak@intel.com>
References: <20260225162751.1255913-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF0001DC1A.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::26a) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6365:EE_
X-MS-Office365-Filtering-Correlation-Id: 85f2a529-c965-4501-0a35-08de748aeeb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: xMwAIbHdWw51ZgPrGJmEm4wAMD63H1ntDfdqlrf6ZPUjsXW/KBRJ2kcUsqP7aunViU+u6lBkQRXzyiiTQMhkuRhTx2ikxyAaa3O1OWODUbn4qHEpdz7E2HI6gEMAZoaw0PLYjgHPZidnCR6G+WIuMlHAq4v526+Predt3XkijkWWtttB71GltsfzSpGUozQIDrwVJvEU+fE9TqufOleD4lNgH6AzwJuAGy5o7pIHTQ4bSxUcqhjTBIs+BHopqMsj0L3gT5SOOkVtncYdDeoZirsxkQbzJj7cUF4yBq4QyYS/iCkqlGS7H6/tF3PoZumgTchM7T1nESJGQgwJFrLZirii5b+bI7782qQaBeZ47HOGSTI5jfuZGRAuI0UvoTiOQGTPZvou6I0QUQpA+tQpfI78nP3n8+pxsqedgFipCPvGcSNezN6qNQltkNgyJHT8rnhqNpI+2hNlkjNuGlJARVAJj+i0z3EAMaQvwgtgl+8vScYEoFiR24LsnzTfqdn1Mcp15KjT92371xdCnS4BzNm/DBnFaHHkiMbZvWSHlqzoVcuGAd6L+JVbmBPLoXGgdrgjVq2iX7V5rjW6fsvC20XW+nR9WrLlg5FJUwzzLxiZ9iwdLndWVaYgpgmhM3MgdUTeyxKWYrZ6tN30h+zNVSKaN0xZalU+p/e//3xtznF1aAPi6G0t7q7RjaHdGJj/MfQAJnrH1fMAtlT/Vdrz/g59eIJtMNTKQdyVAkeN79Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8g34sgxYD71yzT4UNaftK5nk8oMYKwN4/gXrwOt8z1Pnt5pMXkDZ9+PsbvkT?=
 =?us-ascii?Q?khZ2Nuvzyu++VRLJ036+GtpbWPxKPUBLgGSIXc/hWPd1xQQHInpmy2hd5KR7?=
 =?us-ascii?Q?QY1jL6jWrzN10ODNWZfeMejB9cYisyfo6YWg+IyOyjLKG8D/0mCvhJTQhY0V?=
 =?us-ascii?Q?VVTh1Bk1UdqRYKH1HQkTG0yodkHWdZW+hTlM0aIe4lZB5S3gjMnC2RN1VoQ3?=
 =?us-ascii?Q?lsMTRBWnSAbyprnJoIZ8ooWngcOcJxFc36QTsEm4eu95vBl/AqnSTvEdLz4Z?=
 =?us-ascii?Q?3wuJ9U1dWzDlUa5eDfyMb0i4Lqn5BRoHTGpa8uhczkBFS94rc+pbpNIOwnwk?=
 =?us-ascii?Q?zMkY05HC3fplxeqEcmtRovxo5C4pKg9SQCQJuXFCwEuCMHOb84B2PwFab1fp?=
 =?us-ascii?Q?2TD8Jl1PbcsrkLT2c+UvmX1JP52NgsjzGg5OrriZIG5cOsJWvdL4d4QmxjS+?=
 =?us-ascii?Q?hF8WsDpSoDPa0HV2Sfyv9FkfAcuQOIuzf73dpH1l/1VntE5eN1ocxuz3BAV3?=
 =?us-ascii?Q?fyZbhZYOopFrWcux8jNfjXFXny7CiEueByu91sO+RFwHr6QjDgOzT/UR9SsA?=
 =?us-ascii?Q?7TdgROAJD2mPk1KdASNuCk74poEOb3U0TWnkoatc9eDk4budfiynWk3MvYE7?=
 =?us-ascii?Q?W/GzGpkc43rxmCpnmzLb1/fCI3RFlb8O7aG7V+WFUzXNQLz5JGFZUHRu6lgf?=
 =?us-ascii?Q?6qe12e5zsey+dkup+tDsXwZh2ykHtkIBgS1N3ttjyfUPz3byXQKIJlubHY4J?=
 =?us-ascii?Q?sCsBHN6xIHmLebrBHJ75bBGfEs+UlIySTL3ENw0Fu+ELQVE+SsGYi9S1WJK/?=
 =?us-ascii?Q?SCQNGT1h7YCkB71kjJRvmhCsa4wFxW/IrobqmVfc9+sVY/WYNe7J0YCf9eo4?=
 =?us-ascii?Q?8crcvZOILlo2vEbqC6Lc1cHX94L5oJXgciQ9GkkW+9rpR8W3iyK9UK5nU5WU?=
 =?us-ascii?Q?Ef/cAQ9Eu+dpIc5Lap6gzgWZ/QBOiTqfMhFQO0LDV17onO4URB0IQwGtOGI5?=
 =?us-ascii?Q?MprPML7g33I/CkSNYdASC+Ri6k6kFVSeUZCbEdZARfIISSuSvCWpsHpF2Pv1?=
 =?us-ascii?Q?29sGexhz3TjwTCVaZkDfofeEJztBXuInvNHakl4f7iHvii+vLHnXERHaD1Rq?=
 =?us-ascii?Q?b/+y9tL47Tbgs9OyTjPcSwuuGxq+4l5bZBAhdbPtStsmxwa01j5qp0W/4rWc?=
 =?us-ascii?Q?/0cNzmQbfNA8aGTu6dIA7N8MNwMBbEKQsFmsITcXQ4yZs3hzFrmZi8aq+5GC?=
 =?us-ascii?Q?MerIByaOgf91n+Kef+ZL4Vt5gQzb4LcI7Yk6ve7BdlSnJCWuVxY7ZjbmPLPH?=
 =?us-ascii?Q?9xnMaP3P/DYeeA4onk0yJ8RFhrsqo82wrjjKg7NQgjZZ8yukMkwcuAFpw7+Z?=
 =?us-ascii?Q?ap5nFWc56jwZFsO0Kx8WtwDSm9fz1xU6TBJNgrxpL/3nwMRl7ELAkinksVrf?=
 =?us-ascii?Q?JiNJtHr501zkumRRitrR/HVmLlpLp/eBW04NCDn9wos3UlvWaWE+JfR5P/Sp?=
 =?us-ascii?Q?D/YhwQU5WFWH6XwTbxWa9001KqJjgthZbYVLaOace6B/2p86KK2CLmqCpAVF?=
 =?us-ascii?Q?Xr99FW1m/2fhh4dcQMdhN5EoiEA95ZNgQMHalZ4ZG6plO+nvJhINAyfZw6Bt?=
 =?us-ascii?Q?2wAOgLDIjU9FgZ+YBuHQoxUw2Lf0EGKdz8xToib4ushbHC5ZDxDIde2iBajE?=
 =?us-ascii?Q?ssZr8UUnqe103IxAgfT1bd4b5dsUK/IyfhN/MFaeP8Nl13PuQ0fMAlW5F6BD?=
 =?us-ascii?Q?I7jUOQH/dQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85f2a529-c965-4501-0a35-08de748aeeb1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:39.4977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ataAgHFlIVYrJ5AqXx6ejMUaZ7bw1Af5NHaDSHPrzpS5rGdUgngBKeb4sKUeGehuzKt98e02EMuLqqyfOVn49A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6365
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4D34C19A9C2
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

HPD IRQs in general should be handled after acking them. The

1. Read IRQ register (read DP_DEVICE_SERVICE_IRQ_VECTOR,
   DP_LINK_SERVICE_IRQ_VECTOR_ESI0)
2. Handle IRQ
3. Ack IRQ (write DP_DEVICE_SERVICE_IRQ_VECTOR,
   DP_LINK_SERVICE_IRQ_VECTOR_ESI0)

sequence would miss a new interrupt triggered after 2. and before 3.,
since the flag set in the IRQ register for this interrupt would be
cleared in step 3.

Fix the above by handling the IRQ after acking it.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 27 +++++++++++--------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9c7359057fc8b..5c1529e38a6aa 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5478,17 +5478,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		ack[3] |= esi[3] & LINK_STATUS_CHANGED;
+		ack[3] |= esi[3] & (LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
-		if (esi[3] & DP_TUNNELING_IRQ) {
-			if (drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
-						     &intel_dp->aux))
-				reprobe_needed = true;
-			ack[3] |= DP_TUNNELING_IRQ;
-		}
-
 		if (mem_is_zero(ack, sizeof(ack)))
 			break;
 
@@ -5500,6 +5493,10 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
 			intel_dp_check_link_state(intel_dp);
+
+		if ((ack[3] & DP_TUNNELING_IRQ) &&
+		    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr, &intel_dp->aux))
+			reprobe_needed = true;
 	}
 
 	return !reprobe_needed;
@@ -5802,18 +5799,18 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1 || !val)
 		return false;
 
+	if (drm_dp_dpcd_writeb(&intel_dp->aux,
+			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
+		return false;
+
+	if (val & HDMI_LINK_STATUS_CHANGED)
+		intel_dp_handle_hdmi_link_status_change(intel_dp);
+
 	if ((val & DP_TUNNELING_IRQ) &&
 	    drm_dp_tunnel_handle_irq(display->dp_tunnel_mgr,
 				     &intel_dp->aux))
 		reprobe_needed = true;
 
-	if (drm_dp_dpcd_writeb(&intel_dp->aux,
-			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
-		return reprobe_needed;
-
-	if (val & HDMI_LINK_STATUS_CHANGED)
-		intel_dp_handle_hdmi_link_status_change(intel_dp);
-
 	return reprobe_needed;
 }
 
-- 
2.49.1

