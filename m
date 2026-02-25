Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBBpDFMjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:07 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C8A19AA0B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B171F10E7D2;
	Wed, 25 Feb 2026 16:29:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IDpgyOHh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B018510E7B8;
 Wed, 25 Feb 2026 16:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036937; x=1803572937;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=+5NEip5XKRW7tfv+ajocY1t4Nr4wUBAGxQ+fL/8iA3g=;
 b=IDpgyOHh6a6/kteRU+4fuDJL+drNaspSIHIN2nW3Z0kykdhGdilYFKuH
 JUZwncQusOnwwkqz6tDGUbQ05GnoD5T4UGDi4vJMdPHsqo3ULILUj5GdF
 Y58+CRD3UrGm6wJi/dsewlUPcE4p9/gzrL+RmoHnXzdQJPqwtW8/7AhYn
 H9F4+DoK9vFRgwhWciLq2cJzSdh9ug3KDoX47m46F5J1dGhW5Dc/Nwo5/
 1gImcxva3oTnl21TjSoHJ+JBT+mAfLMWo+fzhQzrIpNA/Dq5hY1GlLBHY
 A11T+319pFuGruSUdNXaxALjebIFZzbo8Yij7y0qOXtTJtY7hvf6ilVaZ g==;
X-CSE-ConnectionGUID: /JhnNJ97QcGLLhucClVyNQ==
X-CSE-MsgGUID: Q5aB/uRURYGIGQSKYm0IhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84175871"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84175871"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:56 -0800
X-CSE-ConnectionGUID: Ijc3wuWQQ9u2no2WyZB3Pw==
X-CSE-MsgGUID: 6qaNAdtLSkWP4kVKZ9ghSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216425834"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:57 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:55 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:55 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.2) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wp/iDc+0Olj3PmZskRajWvXLcFpLhp0mNG/l67h7r5KRoAn2N9sbTrbMdGp9+2Gf5E/ZnfiTaEdGh18mFVE9J/2i7LExjUFYU/8vEdPo6VEX6k8JwFJ99bG5h5TBRmt8jnlF0SnFSEI66vh8zHjRcOyBoU4Wt1cwOBXu4ikiSCz6lZNYKaaTaiGZvBgMrqnnA37aGE5+uKMPC9Q5vAGsw3prrk6MYyM0wT2numUUj8sHmgW51uAaoy87OA55LTOL2bOnz8NnZjAE5AZAsDTBlOM7lMcVIwKR8EcGkLs65A5HGSjJuCjO0/PxK00zOHoky9TjPeHmtAsmNliogKqKgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fIogPXY8jCPE4sRHyiiwQYZToo4KQSVTni39mF7xEvY=;
 b=aDgFt3ZjIZGr0jHsRGrBbhPOEr9lSaw5xq2yamy/3E+lTNVYQTpeo8nwzis6M3D2pstYS7fpkJPqPY02kHaAohOzI5rfrnX5KNJOcjWtYU/6D523oBlKSONGHMJsxWS1+XzvAqauaTr0N3ZpxRa3mQBNNAwEG1zeKbDuHikJS09+vdeuklKhjb4Z2/BFgQ0vgQRJXPBmN/7vvcqv55xm6T4N8u/xlFXstZRWKHCBEil6JlAKNrku8RBtyc3MrRtDJpfGT+0px59SkknlHc0k4JytnroDm+sW/VbZ24kpBcS4+vOqXz6iqjdAzPRzMiR2XhsEW41z7K3xp1p/eE0HNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:53 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:53 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 11/20] drm/i915/dp: Reprobe connector if getting/acking
 device IRQs fails
Date: Wed, 25 Feb 2026 18:27:42 +0200
Message-ID: <20260225162751.1255913-12-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: f982a443-c9a8-4d8d-8107-08de748af6c6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: H2wOGKXZoRlnCQRgZc4MkEHUy5cMxHMab2NSR1814M9DecZR/9al1SbJeFvsZjXCnJ2lf7c9Fez4SlFLj2QglosoesC1+8ehunl5Ppk4WdscNxWbBmfbmfC4i+bEmk46cii8+qxntRcCYFZV2ciJIQlt+bVWdiDeItZ5+0PIn4v+xI6qCnV0dx3kHa0tQJdUh7alnv2lDKt99yMHqB2ceoEtaop37W7SfyhsJF7l15g4UbloTWYbfDelY+cSUQ3vTTOjXG8j4rRWhdsof6husDxPVym1rHu6hXQoIMm058kPRwGxzsdXHHGhhX5fZFd2b2Hg0jYraV+0DK5jMTCLroFcYbQeGdRwbk+81NtR6BeAjPBRb3EUnYMKGf8lv49jwZgnptrE3r/rSmVrN1Rtx6a3vcuIM+nkxD+/kAvmqnavrcR1l3r+8g8p2DlNewAyKktOy2gsSKLQuVBJ2jVOEDgKJiGHMt0hwITR7VIVKq54vhT6x+6X4qDxS47xup8XBwz14nVhuVRS/vBS5AxKc21oF714vIV/dHCgPXoOZlzyv+Bh+DqOFPxJ5qPuR/e61qWoJCcihDOktk6gLlsSfNHua5YwiTFbNhd4L5HuE94p8gHZfQmRAqRzOCuo5RIYdO3Lyzz8Py3P3UgTko/iT7n5RMkBHwdTkImYCmzZHiThH8BOzf6IdBD239txSFNfGKccbVItvBBK3zmQ4AyUo9pQRQ5iGGqW6oW6oo+Sy5M=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?g1KW+w+y9VRbzYWNuA6d/kNxjRwOiD4psDjNGw+zjNTjsD5+g0u53QcujBFy?=
 =?us-ascii?Q?uOTP0/cJIRXrl/zZFCzLOlGtzqn5nbTmKdn0uxCgr++TrLX70wiilxZHgz/b?=
 =?us-ascii?Q?12KOdsQfU05TsMkK/KMWj4rU/5wps0SbPs+fPkvqzPnkzkm0z4P2KhH4aIrp?=
 =?us-ascii?Q?71UBvjSQdExDtYlSdBAiJ63ifYfN2JGiRXKnsK7DzHjWS1P5xMO6PQ694p+f?=
 =?us-ascii?Q?83MB8f9eskp1qbiufnZA71g2IrVNYQ5+gB5SVErxRcnfizrL6Po3+QC88TgV?=
 =?us-ascii?Q?sEqIaxdXs01L2NFDE4oF6tzWeurN2t7+/uM3ps4pRtqU1RPqPKghhhCQe+C+?=
 =?us-ascii?Q?A7gfQoW34XzGT+9zcT4dRQabQvTYKWbQE1t2+sP9dfDR3Yn8W8TUcqGwz9C2?=
 =?us-ascii?Q?zIieIrgHv5IbJrbsaH6COl3BhfHQn51z73Pki82Tlx8JI/Oldpq6W3wERRDd?=
 =?us-ascii?Q?bQQfe0Q3LwsRSa8Y4Huu0L7iX5S0yS1i/tNgNDOjK0YRWS+LrohGpBB0ZXHe?=
 =?us-ascii?Q?6TGwAMjD5UZgy/7qvpEORKgYimIZcHTBzgRAdAqB0foot00e5aDQ82ra10Mi?=
 =?us-ascii?Q?eq4CwYc6Td99Gas7UOXPCn0iDUvqu9rJBoQ5HM+hm3FBW80g8O3PIHCsoJQe?=
 =?us-ascii?Q?Nsm5v/UO9XJM76uR7eUPu/DdtOeo0jlxUgtpDKP4JPsU0G67FEFuQNTK3ust?=
 =?us-ascii?Q?6byRPvOVOemtHy7BPpuCkh6C6Y7p+/aGVTgOCifKsl1uJfDPpHFxduuT0IJ8?=
 =?us-ascii?Q?9jX+j1nEbHm5gGdjxL6Iq/vsWt8G017PaPjhpDD8c/MWqe2kEWoy9W7r6DMQ?=
 =?us-ascii?Q?W744hhadl74+FGtXyxkXe+pnrFoldUYQvbCBBvhy9Conifkxwyydb/AWawNm?=
 =?us-ascii?Q?GxKSeHvSUtN+vxgI6ynT7feGeBDn/b43Dv384SqhJ8yDP7/8tiTgfa0lzCg8?=
 =?us-ascii?Q?a06Sdb5N1onz89sjGTI20aqLAvko4nnUgScs+yLAKdm4CWaWlchuO9LkM2ay?=
 =?us-ascii?Q?sQxw7nH3GyB8qb6O2JuE+28dCIb36FWc0hnvtk9k4bWA++aFZXLXDW4uMYJ3?=
 =?us-ascii?Q?i7nAu76TaWEeADqjQEYr5QVfsu495FlqvzrTdrUkaz0/BrTWAkzafVpzL0y7?=
 =?us-ascii?Q?Dl16fD5S20DTco/r8BZgCYQLl1hRjhQdpx70/80tkh3oUcX2pJiweDAg15oA?=
 =?us-ascii?Q?zueScTr9UMRiNPTK4a/JgA0e787pcptfz6gkn+d09HfXDqo3NelK8E4wo3Ps?=
 =?us-ascii?Q?qUZUfgxI7apy0Gu2t5BjsLu5WZwy38ShlC6zSBM7dWt37z30MHREmja8028D?=
 =?us-ascii?Q?9bdwXqkGfl0YRA06Ljj/AiY2Iv05Otww+NUI8lWq/kZq837NFIkvfM/LdGUf?=
 =?us-ascii?Q?ONpkoMkqMi6wcfS153TG1XmaUvNOkZ0SLscYiJVOZILUqyBZKYhYidWWfi6o?=
 =?us-ascii?Q?M4t03JclBrdBafUy4sVIUsXUmrDJG/Z27aMOc1lK4b57xC48dWg9sH2+72l0?=
 =?us-ascii?Q?YQc6hyMyixFtom4wROKlsn4zKhmnIHt/3ld1m1VD2Jzabt92Qo7RVP1bTz2S?=
 =?us-ascii?Q?tKn68uNlixJkqM+/j4lwk/sBGbeGYzFhUPoGqMSnIq2e4U7fELHKz9UUpz6e?=
 =?us-ascii?Q?EI8Umd0Ay9FODbv3ll56YhpcMZ5xgxCZPFsvAqWu03ErlE/bhdyX1FO3NiEk?=
 =?us-ascii?Q?JAqz6g/HlcoWsXv3/QDi401ynqT8LMOdUVOiUZZlVSZey/+Z9zJ1RvhiZ0Ea?=
 =?us-ascii?Q?6GbukCK2NQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f982a443-c9a8-4d8d-8107-08de748af6c6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:52.9373 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sd/WJG90Faa6kdFnlmmYrWpMtnijydFhR1sJK/EZFAAkt+tYlj51qo/BDWwPgjNSF2qXV1mNKEjBvKrHUTojUA==
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
X-Rspamd-Queue-Id: C6C8A19AA0B
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

An AUX access failure during HPD IRQ handling should be handled by
falling back to a full connector detection, ensure that if the failure
happens while reading/acking a device service IRQ.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++++------
 1 file changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3ac9458a2c7d0..613fb0cd08b78 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5772,16 +5772,20 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
 	intel_encoder_link_check_queue_work(encoder, 0);
 }
 
-static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
+static bool intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	u8 val;
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux,
-			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1 || !val)
-		return;
+			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
+		return true;
 
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val);
+	if (!val)
+		return false;
+
+	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
+		return true;
 
 	if (val & DP_AUTOMATED_TEST_REQUEST)
 		intel_dp_test_request(intel_dp);
@@ -5791,6 +5795,8 @@ static void intel_dp_check_device_service_irq(struct intel_dp *intel_dp)
 
 	if (val & DP_SINK_SPECIFIC_IRQ)
 		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
+
+	return false;
 }
 
 static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
@@ -5855,8 +5861,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 		/* No need to proceed if we are going to do full detect */
 		return false;
 
-	intel_dp_check_device_service_irq(intel_dp);
-	reprobe_needed = intel_dp_check_link_service_irq(intel_dp);
+	if (intel_dp_check_device_service_irq(intel_dp))
+		reprobe_needed = true;
+
+	if (intel_dp_check_link_service_irq(intel_dp))
+		reprobe_needed = true;
 
 	/* Handle CEC interrupts, if any */
 	drm_dp_cec_irq(&intel_dp->aux);
-- 
2.49.1

