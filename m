Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHNxJXYnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:46 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFE719AE79
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE0D10E7CA;
	Wed, 25 Feb 2026 16:46:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DOI4wbPZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D40C10E7C9;
 Wed, 25 Feb 2026 16:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038003; x=1803574003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=9LKpvu+3DmwbnSvmObe9CYbUW515PuXlZbz+x2jGXoQ=;
 b=DOI4wbPZ4k64LtcLGgaLr9d5fpQshOPZ3H6eyYtFMBMxhxc52DhHJBQ9
 bAFoSUu0lvPhS8vskKYbeS5oOmYtlfK/ts8zA1ZBYqA5KuYYurtjaXkDJ
 SzQ8gbj8tn7z7xFiEnCvr3IgbDr5xeWBLb68H7fmNuQ3mAuDAbLZlqjS7
 S55T2XMMSZ2D0DXEwJ+1WVQ6OiMV4Y78XCgiYnt9TOwZbdSNEpYjygQoN
 yEVmCrCOVROA6bIXta+6ANKs3uAY9fbGHm0pBk7xxZ9Csra1qKdqbxM+6
 wOb9eYrDh+ul8ovdbqghxLRSXjhFjd1CoLlpN5vSBuQq2EPLoADhwQNco w==;
X-CSE-ConnectionGUID: r5nfDmE4TJmzlgV7dcsR8Q==
X-CSE-MsgGUID: gS80RkqCQha+9ZaPDRwcBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83707083"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="83707083"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:43 -0800
X-CSE-ConnectionGUID: mIr9pah5TriyrXv1VwvJWQ==
X-CSE-MsgGUID: njyw53JERDOKrAMq8U7aLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216172991"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:43 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:42 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:42 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.68) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M5De8cOXKKGT0ApctPDPjbMNsWdv9OTGQiOPSKpHfqtclqOeTcaU78F51INiOKmIjpN/UgJchvL03sQaV2BhWv2qTC+rIvzGitwbJGKb6ZVNHiatI5l8MpNen71NhVQsSJTCh50BELr++slOdwjjNVttu/2Dun8ZNP3p+Ij7LUo5VuAu+T5Wu28EtNZIKq43yzzoelKDDZK7V0HhOlwKbj60XJZ2hyTcxFhEjVaravAHdA/yhcKfUM49KBeu3Zl1EOWKuU3+6pHfGeufw6OHez93xyDX+8FJ6eurYZNvzDP1xpfVUq0FcdHO1iDiI1jhwuR6qraqgI6s+ARAK6jkIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ko27n38jEoAoaDg7Uq9cirq3dS68wrNwVyIMgF40QXo=;
 b=GR8KdduYyE95Mbh8NEhQj53HHmKR5hhvcgl3pww07D0YAf4rLl8KGATzqygsmF4IZ2nOlKFUjaRWiSyQ/WZurk5McCv0Dv4jE4IXjUo1Ktvk26L1vbWuyFMDi776LmhxcpWcvd1Mt58huTcADe1wB2Kl5QMRGFfmUCG3VooJBRTDt2QGLjB3xoVRCx67cFlQLUGYG0JJwCTlY6QI6tlQ779vcUJ8n9gJLQzyR1YkPMmco0WsV+eo2wfvkDCVdk3LFB0vCxXl/9gALhkLx9AJOxiY8S7Ujc9v/woVDJAdBrdKp6OZNn2zYTEOU+RO8lOtn5J1jffegj44MyC6eLs/Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB8787.namprd11.prod.outlook.com (2603:10b6:208:598::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:46:39 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:39 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 04/20] drm/i915/dp: Handle a tunneling IRQ after acking it
Date: Wed, 25 Feb 2026 18:46:02 +0200
Message-ID: <20260225164618.1261368-5-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB8787:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e6f1072-77c2-40df-9b57-08de748d7280
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: W7Z+XhOrbTGfYISFU/nH+aHnJNpCA8QPJBkksXJMKeXyeAt5yb59bShIe+zd5cy8Ou01CvJUgNY63BXg+GIwpBWL/tRoZqdBUYVBVQCv2oiYkG7CoNeV8ZhSA5zYsflkBBG4q5mfwFsWuGyNQ6ChGhVXw+pApwqvNHjcIYamo/FGgWf96xkVRWzUbZbQjC0WU36New5uK5sFJqV8nB2jqnlEPTnedGW2NG3U1AOdUKanvOpa7YQFs/GoDP1lk5afERQjb4kC0xg/57OU6AzVEJ1SavpJojKPNQnkfPYJOkoDvmJ8QdlKBfMMByYozVqJ92vVh6XfIaLc+onCe/N4seUfefxp8vuKWNJxQe3kWp8mQjkjWGcc4uCpG/bmoK+vxb59y1qIAZd2Qa0NEVk+XSbTBqurosJL6DHT+4BspJ/RSz8cQWLoNuURQ8py6fJVIeyDlUG2u63/d+mGhxUBRlZeY+F6g3UF+QsKeOQ74xNoRUAjT8x4zFPpx7sEy1RQrxGpcczHZktjG0wd6/7ZV6zylnJyx4l86Bu8NVQYXOo1GkCzGCCggJ1NrjtsfdW60P0HEQ/LTVYBIVh4WngAud0PvKppr0XDq4larTyTGC10C9iIkfg80HwcPGgXUhGyFFh7YqEfJhQw/GxDeBkuXUXJRhPmuneOaXBt6rkJ30lGoGnKzt4WNVX5LNt2RGERYvIHTEel16FcUOA4PRmB6VdIuAq8FVaHZ0AcXf7ujEM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DYR+/dQdvMqqoA6JLs1A72xAggNI2XfLdL/1O3HWUE45bY+zcv1+kr0gJZGT?=
 =?us-ascii?Q?PGuMkKckw64VSEDgQt3b5VIga4tAKgntc0adTa55RByiSOl2yy2gYFbW9sTc?=
 =?us-ascii?Q?keCa3VfIgF7u+4yEV4ZJ24ijZL6eRMOHXU2LfMy9eiQ6cJt/Niejx/rK9g2z?=
 =?us-ascii?Q?/AtHJ08B1D6BAjD5ssmi5DHfU1T5nVTVYBfpRwQrnisNnzAfKOdwR7wORkoy?=
 =?us-ascii?Q?5cVLeZiu8zuGFTd8vXqIRR1KvyHpZxtug8zsGuQwt5wY9QfSIdzs2PIyIO2f?=
 =?us-ascii?Q?XbsaC4m6jDWQW2I17Iz6TYFeEADOOoZvEHCAupLRGwtlq0VxUH6WAg1R2/cx?=
 =?us-ascii?Q?ZgbUhoufQ/VzESo3wskRuK8K1IwHEZNdjA3wB6oCI2eqVQxnlzMslkT+XpK3?=
 =?us-ascii?Q?w1CzvLtZDEik4OKmsKHEzpZWq0GUwdz+VMkOqw6sQDnhDfoAs7CcECsz/XgR?=
 =?us-ascii?Q?SMMcrHb12QrKzfFSfC9Fntx/Cf4tWFNN8Z1zvsTcrj1/+Kbg/xwpm6yWPVrw?=
 =?us-ascii?Q?HF9E4uaMhUr3QRUu6REN3u6EUeCHTTC0AZLa1CqxG6rVq4/GC/Z484tvY58k?=
 =?us-ascii?Q?xEyeeVYKHtL20PDzUHq47jDGrjx641CeAqreGP/pTYX5l/32DAc1PItNcPKm?=
 =?us-ascii?Q?CMjKB3hCWlqC/ikXn0GhUO7o0DGG5XqQmSCoFEaiVHUeQGJd6olHijRWAZzJ?=
 =?us-ascii?Q?p4wb47ktD+KbHjkcOH7tQkXBiqxdvu/odxUaGYapm8PL+4f3kl1S3RqSPLmH?=
 =?us-ascii?Q?sjNQwFSLoGaGnW3GxVuJEhZLOpdy3XJHj0IxZYkFejkODkeuyOITaryp08Yn?=
 =?us-ascii?Q?idp6bjBBRPlprXE+nms8c2sxRFf8rCLU7q99SNOgKb2+8cVnKutZ9acaed6X?=
 =?us-ascii?Q?FXsLoTm7ZUAU+CwGPSZVBrZMshev8Jy8oxypZUgTloKOOx+igNhmDSCVRTc2?=
 =?us-ascii?Q?KtHu3Im/63sxoCEVIZ2UR3DEFK0VjNi2XtrG44qnOFcMF05GUyiy0jSItWMt?=
 =?us-ascii?Q?zEknxhCN7zMwUuPvQY0NKCf0dQWgpmBvywZFn6csbpHuj5cPJvretSzSu51z?=
 =?us-ascii?Q?brH8kbpLQuYq31fYyDXLrNZd9rhI8k7AIhTEKsNNlDFoqz8FmNBlvAbUIqnl?=
 =?us-ascii?Q?QX5k5DdTcFc3dXMc7AQ+YqlIYQ5eBwarGV6l3kwgVZltrLpBTQi9G37IjI9v?=
 =?us-ascii?Q?5eW556mPD/WxPFcPOOj0py73WFWg6X+P4cp+EyuGHdCaR/o4+NrBlC8JinWZ?=
 =?us-ascii?Q?+X0nDEk5P+23PFQ2EIejmt0naTYxnWHG8srPPQ0hpmp9HZmCdwaE7jpRIyGf?=
 =?us-ascii?Q?5oBXV6acR8v7HK4fOp5RC1vIftExz4MoZUPEAw2nruVepv6+Ov3Hl7OyWUgP?=
 =?us-ascii?Q?yd4jQshBVfPJ0R+GJXqTysQ53Hl6+Ma5C9Qj99/mo1TxLRIQQwmgpbwDL9ec?=
 =?us-ascii?Q?7wCirMr8dwtHQymQ+ki5BRoIS3uMZIPP7jXb6p5u04bMKu1X4wJg87vWFGY4?=
 =?us-ascii?Q?6Fx5gqR4s/Hc+VpOaPMrw7wnrme31+wCsPWd4AcArteklPKwIFITxjghcqCe?=
 =?us-ascii?Q?p34p0FmQT5vv9BNx9iNvEKI+vM6Sz+74q7SKXRwomHemyV06uCSjSLp72JAX?=
 =?us-ascii?Q?+s2o8PNhJBiRye7juvdufwswtKYzrwRb+UAtoWI++1EfjeIBBFblMtvYixs9?=
 =?us-ascii?Q?8hsfDzRxkftnEVW9NnZeCTozYqQHaE/AS7qNRO0Fld6mMZ96/O+lZaDW7sFr?=
 =?us-ascii?Q?/rLgMVYHUA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e6f1072-77c2-40df-9b57-08de748d7280
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:39.6143 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eBrv48kCYHFRrlHpuUTngjIiwiUVCwRzM39+ebY9ZjEXa1OtbQZoE06zcNsv9rpYVQTJAnAUzi9YO0l7DTtfaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8787
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
X-Rspamd-Queue-Id: 3CFE719AE79
X-Rspamd-Action: no action

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

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 27 +++++++++++--------------
 1 file changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b3849f1d9b7f3..bc5c318869329 100644
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

