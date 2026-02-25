Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cMjwHEcjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A67119A9F4
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16D7910E7C6;
	Wed, 25 Feb 2026 16:28:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XzwADM85";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07CAF10E7B7;
 Wed, 25 Feb 2026 16:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036932; x=1803572932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=VwCpYVF2ctRkmksUHTzCeS8g6Mo1Jk84hOcZYdrTroU=;
 b=XzwADM85vDezh8c1s5AP3qeokSwCxbgKU7ah+uGEZP5hsX3mhh9d36Tl
 OOhYnlYb9cVEv1QtzNTqvOnLJ/fUmEMK5coz4EO3e8UZAesYlm9maSWC2
 3Jh/1IYYcxSgoAJuRNAEd9lT8xEaPmiY724T5a5uzH9wepdY4enGmiHRv
 W2z3VeCtQCh6QfrwqCTH7MzkseUKrhEQ4bNd20HeWAV33ActosfSnRqYN
 QelnClR/kV4waNQZSTZqihfZGcucrKgG1f27cx8aym/bPAqMglarNrQaq
 29ckKQSBHvIVbb3aY2AbNrG/p2LKKJZ/0Tm3TBG0YiBt4OBPUza2T2egm g==;
X-CSE-ConnectionGUID: +/VMNmGKQ2q8tUQnSemMWg==
X-CSE-MsgGUID: ZLSP+iZMTtOypVZt2IP4TQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72955406"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72955406"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:52 -0800
X-CSE-ConnectionGUID: e+OCPSMWSRCKB4ROcL1egA==
X-CSE-MsgGUID: PxRVO298Q4K6yfT63ergBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220783728"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:51 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:51 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:51 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m+pFRPvVfemy9Xg1HiXAzz/MwbLQznwzz+CI2L2CAPjITvTFRBBh+pmzMXNLrFZzt1OmKhFJavfVc7rvZj7uZteWsR5A1FjreveyZv8dbHFfKOeNar5+45/1tgU/egylDO14gf9vuW8/3uJUFLrZOiqQRxWsV9a5E/akh8cY1Dhpee4aNHH9BVpJMKX6InLQ9Xu0pIPkcu6z0KiQpq6zzhypWwA5Mdi+CbpomxT7jZy8Vv5lDVUwZS+NUGd+e7SC8k/Uj9KUnfNO71/9em52rJWnBMa43YqYQKskbJkzYfMpltIyOBgmz1wl8yRuvazVgaWOPzZTH4u2yIS4Iql6jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a4ebyOXYWXx4xOheuE3KfPvXENOZrCMwRNAo+p8wNRA=;
 b=SwZpM7OV96dRBSe3T+2it3TsTYFHLpo8aMJzSx6C086NfBneXzVACGfAxKVAP6xSkbFcITP4U/QoyKEv9SM8X4CSthiv7XTme5hT4mTCAbKsC1WvkzUZAzulpXtG+pC5tmdE1cN9fx4OoWX4BKAfC6jsIa6RKoWfGzz0vXKOJi1b7bN9sbEJT99jD8aPBhE09VWVzRk2oxT85yw9mReNGyy9zYo9ZC/sp1u8mLx904j1EnL/iCOet/KeVo3vi6OnblGo/cdOWNxzD2SFdlWeZaKYhyS36ScHiu6x5HNvjZWE3Q0IS7h0NM4Jsi2GEnQhX/zgHG30VtBe4YZZ+9jx9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:49 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:49 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 09/20] drm/i915/dp: Fix the device service IRQ DPCD_REV
 check
Date: Wed, 25 Feb 2026 18:27:40 +0200
Message-ID: <20260225162751.1255913-10-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: d06c9940-6dda-4438-434c-08de748af483
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: zDdyQq2zXLRmqmbGQgVROwE2Fpyvn4DF6A1aLf5ksdtOJ9Vluvxqia+91GsQ6nTynA09kcyoH9frrgO/j1pVaO1f9Cgb9GCtbT1tWE8d3c1kz9gnlBkRQWVdpbGPuG5TNnsT9ES2t2OhY++zzJR4Hb3/KwchjQMai/gdUbKGivdiiRt+sIQ42ii408g/6axvlM5wB8BWnVE6p/qQAKRPr+fId2dOn1rarleX9ySCS0KKUJfIRayUDjFIR8Pke2uC/o5H9/5003w3oVFMYwenzTkq8X7p1ki37dK3ssudn4OYBJmPUZcipn8dFZz+KKC5tPWeBsgv/FwhvVCDaij7KTrAAMzea0DkeyyXV2Cjpmp+tO+QWkvOulCIS0m7P3uyQc+pYynQaqQbAXk4+ztOIYB3n5c6ybLv0G4MOOd5MyO+RUM/PUq6NvhiiY1DZINxjkDFKY1/6CS3T+CFXuQAcu94+5FPCd73kUH/gTuTMdasCNDVCw3vlc/y04pdBMG/Yf097TBLKZL2Vtsn7u0St3hCaFUYS3YZo0tqe9XOFHnfSFGJfSyV0A78UDa40r+tSySzl+O1HOL2H3Et11eBCMRTRrMGmWKjvc/TCZPxPW0R9xASv0qs+IPc7J341yumOAbjGSBlYcPlVT+YN6UqtMuRCDkdCoek3AxT72cuo8t2eQinviYIafj/o8u6etwkMUyYHqt8ndhEvRdDlJduk86th5YUjxD5DPZNgNb8BFk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?b+r4rmtAEGO7LdecrSYadMDsKxM7ZhQJkvZWiXeJ2FWLS0zIpCuOEBjN9VF1?=
 =?us-ascii?Q?fQq25RmTLvt5IRBWd3UBLqNtBpMDsb25HWiEakL+BHT4zEi8UotLdkHsqbIg?=
 =?us-ascii?Q?Z7Xg4cmPgJBD2aIkUE3ihNn8nSFr7Ir40seZ+pBGwybpag3fH9vC2NKaiO9O?=
 =?us-ascii?Q?jkqAL2Zb2Dmr1M09axQaQQ96TmzSnyXXAj4BRJwGJNwh+YSyxTs4GjmfmYs9?=
 =?us-ascii?Q?SN1prFjCTHv2ekvPC2PWpYGgVG4Olxy2X5UWBIbUhvaEJ309FLLO9BAktOr2?=
 =?us-ascii?Q?MCwW3GbjANTkuuIsJBq2azFfVG0bLncOk+ICvMTuF8ZgolGHtR9IVdrDh5PQ?=
 =?us-ascii?Q?riCTsuXhOV3sVcwRcneKCtd/p2EFWsmxE/elwT4Y99oJczXhF+g2MXQ80Qbd?=
 =?us-ascii?Q?kuRs2F1uFUs49sXMvK8VsuzSWO8lhXFASWSMDkCehaH/wMioeBg6bECO7V7h?=
 =?us-ascii?Q?18jj1MYY5NniwFiySOA4s9+1PW22SUy8jAvtgXWoQB9uem6p2T9tzR4Eyqo0?=
 =?us-ascii?Q?kNItzl8OAYJQDncbr5+ZzydLTxeRxSe1GUTqwM8rkcxrV51ufQSypQJGLX7V?=
 =?us-ascii?Q?h9aOgs51ViH7tV1wtkZ9ulbVQOynBH3t2+gFUThIJtweJR3R+AVdJEUS2sfn?=
 =?us-ascii?Q?9Pr3xkoQnOhCcMRlx9sEq3bjkBBRWDJnpMt8Fbb1jun2bXpepqWqZf4WSok2?=
 =?us-ascii?Q?IOkCD+2yuLRidj1fgTsw6uxfUTgukPfWMmjnMHJOjDPv1osUvz0+M4KabZnI?=
 =?us-ascii?Q?2qEjOf2Dkmbz3dP6T1DIp6kXPX3BU5ovOvgVxIMy32GhXK6sRxjlmoJhhmQD?=
 =?us-ascii?Q?uwox56+7uBIKRAAhssSErIBGRjXnT+fxBGdRquT54aCyIz9clknWAu/pKAmI?=
 =?us-ascii?Q?kuF2440nOWG0AwIs+v6wNpAZ5YzkQmd32MD/1+ywBcy6OL/tY/GVwZsL00AN?=
 =?us-ascii?Q?FKpqdaCbypU3ODWReSEhTCnBhMDc6/lrwXx6+mUz8TIeaLYGcEhFMELMkBB8?=
 =?us-ascii?Q?YYkF57cXew7o7ySVJ8YWYTu9ZPqz9v5qgcnP8QAYSbK7UJlDfzbVmdv2xOmL?=
 =?us-ascii?Q?7HKwW5bzYXEYmF551tivDq5AeRvvPFQz4Ycados7cH92dpkntg3RMmsTPRgs?=
 =?us-ascii?Q?qOyFq5G6/yCgxNMtwkmZg0wpWHsKHFUUcaNJ9Ksq9eV7AC9XFtYmse1A/ugU?=
 =?us-ascii?Q?1iKTCa9ZaK3xLwruI4PMVktqeJZGo3RyUI9eBk+aQ7fP9IaeHeZ7E9k+UzxT?=
 =?us-ascii?Q?kf6USCSuXjB70rQ6Pddg3mmMdBQZjAS1EmUTIxGtjbleFAau+s1OICYAfZpg?=
 =?us-ascii?Q?V8piviTqWeKGerWHDGfm03VcfyIKMhWnxghuOxc4DzaxwroM+AD+HtpzhziN?=
 =?us-ascii?Q?IN89JWyywLNN1E2jEt2wGAQRFG5NnRdUyEDlyt0IlYQzI+uypeolqypjHJkH?=
 =?us-ascii?Q?lKpDgpFw4Cds4DwCvkyk2ZgbvKm5U/e8JerY+21Il/Vf1mCNd8944uEZoB+t?=
 =?us-ascii?Q?AqHrWIEjzD1WRi67xRKtaU+ydNo8W2TrPH+UjhS1GAQomAYkP4REVZTWt0Ql?=
 =?us-ascii?Q?m+BpOwM5XLTFhgN3/DxTFY37tSe/MIOZ1jI2cs48Hmyhq+1ypz0N83C1BbcL?=
 =?us-ascii?Q?QsxIBuBSfD5ihapD63Vefn7NMqMpHAj1DL196QOh2wKKLlHZSZgXdZQK3nwm?=
 =?us-ascii?Q?W7olt7ubtJZtiPXSbdBaTtMyP1v0vOaiHgx/YctQv9sWJkDaGHaRPDRTRTUx?=
 =?us-ascii?Q?NOSILRw9Qg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d06c9940-6dda-4438-434c-08de748af483
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:49.2625 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yCLXk7RIOpNGJv03OMXlt0DiZ/guRslmUODEwaq3BV1ICEaWSriO1oBAYARIl0hPc5QKIrKtzJ4De0cA2tH9qg==
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
X-Rspamd-Queue-Id: 0A67119A9F4
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

The DP_DEVICE_SERVICE_IRQ_VECTOR DPCD register is supported since DPCD
REV 1.0, so read it out always. Flags added only by later DPCD revisions
are defined as reserved/must-be-zero by earlier DP Standard versions.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 30b2aa3f5f5b5..11091b31694bd 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5777,9 +5777,6 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 	u8 val;
 
-	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
-		return;
-
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
 			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
 		return;
-- 
2.49.1

