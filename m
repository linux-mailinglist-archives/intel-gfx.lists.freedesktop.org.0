Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A87AACBF888
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 20:24:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288D110E502;
	Mon, 15 Dec 2025 19:24:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cX9cVB63";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00ADB10E505;
 Mon, 15 Dec 2025 19:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765826669; x=1797362669;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=8oCROonpUAivHxZCM3SpKiZGhzJ9x+8nHr+sI1+sgJ0=;
 b=cX9cVB63+Ej6IseUIzk9bASFQ/2C2McIAEfLra0bi4Vt3zwp+n1RZsaz
 TQq7RZX86HdGoAUvV2LuBChpD1f8CtDg3ik35w42TpeiRXhuVJPz1iCfZ
 OT6gXKQRwCyDIoQ+EecxJ+ahnM66rjMDLAJcqPCh3s/PjRWdu+AyURX5q
 /2UTL62+sipth/pggC4ZwiJEWlGYFTrGggZdPj6NDrIHFCu8dl2pQ7nNK
 52GZaAlf/qX0kM+EOnRsmWPcdHLKUfJQbt63ragHJ5aOYJtbZlC3wMk8d
 hCzud8nmLLqYvV0qe8Hug7zY3tQ4Rxh7gH1VfbE36Twjnw+c5m4/9eAQ4 w==;
X-CSE-ConnectionGUID: RPFzBT+nRyaS+wHbohoqtA==
X-CSE-MsgGUID: ovRIy9k6QtmgxUQ/gOaVZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="66726664"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="66726664"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:26 -0800
X-CSE-ConnectionGUID: WD4dV8XXTFib+l6W46Wzdg==
X-CSE-MsgGUID: 1m/8WsUJTjqXHHJkPz8Zkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="202919579"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 11:24:26 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:24 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 15 Dec 2025 11:24:24 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.54) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 15 Dec 2025 11:24:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IC/55VOTkML/bEnlFGGHiFnHRY3jl+XQEcPfd3pToKrA+4YgVmeE2+u+04Jf2bBuMx/T2JQCdJ2tddIYc0ywBJG5u9Zz3dioHwf0h7XvbFA93TapMMqlQfv8dU7zdYFwvZfBdAdBXCjumbCMXvwugbfUhmAmiAWRfnvlXhh3ynuA1cVD62pdOe9IktqJYuAkTEiJjHTtIMqz8c8SSDdkWgrO1oeNQnZbdh0QzLc5W4Bi1QZNyNcehATz9NkKTHX4d84zUUy6ZHnVQVYw97O2ht0nvA4x2cMa86RLk05BemOeWIeAmelDyRkSACaiDN3fMCe3cyRBpUVTcmiRTzuOqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZQ6tW8gU9cJE0tSPlD27rZ6f+PQ+2Ysbn1QkLOjLBuA=;
 b=NQPQqKMrKYiN6HtSwYlsvSJJYQ8olS/E4ulMEP40OTg3xYa7I7z/VIDSVoSihcPk6RJsDZEaEGzx9ANsKnJk/ORFUsGycE/SIMUF4o+KXgytaKklMIojy6E1yaQM4EN5g/2TYlh9Ri+iaVdFSZrNNcTJBgFCJ4CZ83zC037/OyqtsfvFeVuHCsGkzpcGoKoV6hiXt2yfC0sXjGGvmgOWDouhZinA7qHZykVTKKevj9eNfuXl7Vr54W95oNlUjmeH3UznAzu9RQ7PT6L6pf3LrYhHGGI1DsXA8OzMElVcITkjS8Kgxc6WDyiQWYbscFg4lDJpwtbYxAtKcdw00oIdjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH0PR11MB5112.namprd11.prod.outlook.com (2603:10b6:510:3b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Mon, 15 Dec
 2025 19:24:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9412.011; Mon, 15 Dec 2025
 19:24:21 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>, Luca Coelho
 <luciano.coelho@intel.com>
Subject: [PATCH 13/16] drm/i915/dp: Fail state computation for invalid min/max
 link BPP values
Date: Mon, 15 Dec 2025 21:23:53 +0200
Message-ID: <20251215192357.172201-14-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251215192357.172201-1-imre.deak@intel.com>
References: <20251215192357.172201-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0093.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2bc::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH0PR11MB5112:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c43097b-bf79-416b-110e-08de3c0f8cab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|10070799003|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xP68IJw9EWUwXJ2pL3BMUU/QqQouksaRjyP6VGpqOFt7jgJw0OiM/w9yhabB?=
 =?us-ascii?Q?O/Uye3XDHrc3BNWoYGA6sjjtI9JT+EufgMrgyTTzgkxH0AYyrh8AXvKUuC5A?=
 =?us-ascii?Q?vPwdv8+OTx/w1Y1xQL6p16OrrnTTaBrtXDjyMWWZYGsH1MgR3L6UOInyBQUu?=
 =?us-ascii?Q?ihCbnhR8xM336RencCzGqWuMi8tUcPRVGkyhh2esQduCmEtUJCzgUTZFS4dM?=
 =?us-ascii?Q?5NPO4Wh/HhP7+9/r7qNmYBn7YiyF25cN+tEHEaRc2c7E+sd474Zcs68P47jf?=
 =?us-ascii?Q?5QYRbknnAcwOyl7Ykje9XfZp3hXZYz2WtG74b+e5V8WGArzTcxyrubjb0NiL?=
 =?us-ascii?Q?xmuv1a5BvCZPLrloVQJLm7XGmkw4Bh+iHB2qiN+BSNez6B7dbbZ+kgdYPNmt?=
 =?us-ascii?Q?uvQAxvSrX1vXrvaFHS5tJN0Id9Gbq4qw2nC+tQHAn3LKhkY+NbghlJCc2jVZ?=
 =?us-ascii?Q?XnhsPkEo4ZLbAeWdfvBiT8RKt3XhpFKb7Tp0kGkQnTR9NxwFa32wQaCzl3mO?=
 =?us-ascii?Q?9Eo5cIjsvP+2WCxQiiD4AVoXJvomYOlxM2HWWhBQHnYeujFojOJrkHAYgmG6?=
 =?us-ascii?Q?cDuwNES7BfhIAbdStg7eC24Prp6FkvVZqDIIA8cmceqfXdk3371V2vn454aE?=
 =?us-ascii?Q?XH0skYbI1l/FRHC2ryWW6e1lXgyVBC31c8mQa+y1CpS2hv0BkE7arPmLyt7U?=
 =?us-ascii?Q?M35pcUSR7QVmlFuC6ToRNZMJqSLxhbrUplHfNfT+4W+coTOZq0D8v2oz9WY5?=
 =?us-ascii?Q?+CsBjr+8XU81ElfXihUWJp9/BJQdcDEVpEJlbS2xH0M50QIFlgk+PF52yThv?=
 =?us-ascii?Q?qU6qciyf16AGXea1v56GIpuDeaiTzdCSD+LHPeL6EI1uDwiioT7gB9WEJGIC?=
 =?us-ascii?Q?gn0g93ZBZaEWQDmAFUv5JVGTYVZNrgZhkv7uzuAjfmk9Em+1nHkIeT1cT0B2?=
 =?us-ascii?Q?xYzLCf4wFDX40iJSO54BTi2xLHCCq2qowZHnC9O28MfujkVFROk/FWXytPPu?=
 =?us-ascii?Q?Kq97YthNWyc369GUuXjuq15Jp/y8d7tnRkzU76AtVG7IS/1ZOpmCkCdQaViL?=
 =?us-ascii?Q?np8AJX3KOFiX125nNubYpaqgKNKuz1WcfcTBlibZ6yHJW+0048ZBJihBFTi4?=
 =?us-ascii?Q?1vHCQpRjJ3uGP1vGaKhuPbjIOopYGJvcpMNhoxsnNb+IR4lAfxiYoMDrpsyh?=
 =?us-ascii?Q?7tokbH0Pv0xWEdfRFOd9eDiP8/bca3mq6WUeeTU/b/OFKltKnZ6WYtPIEcAZ?=
 =?us-ascii?Q?a6zTpXIT5sEoeXXm0jTZRaXxw/ElG62DT8MPyvlCaRpumkLsoVIZicwVESsl?=
 =?us-ascii?Q?L7YJf9KyaFlI6TYt5MBtXQsa84aXggwg/ZhdKUFI/8aJCA4up5NRqdcCyKlN?=
 =?us-ascii?Q?d3aB+KWNoYJMpa16/Kj9Z+LXJIAnD6+3hBqrtLEXQ2/PJqx0F0CQ3uI58aqy?=
 =?us-ascii?Q?o8CRPI85ugBsokc6MIqbtyCDAsILU3IW?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OeAgRFuY0OAyrIXUSlFkCPH4yG09fU5Z7tuvlpTKBVblru3qBllAUA6xAZFI?=
 =?us-ascii?Q?DcVDhrOZZKFyssCzEq6TiWQuTBeSLhQkW61WrfRpYf9O36w9fcQ2mlCRb8xY?=
 =?us-ascii?Q?GjdDHLK65AJuVGbSnSC5VyLOzFAm3PFgqzXv/Je3Mq1Y1Izu4vyeDX3f2sAX?=
 =?us-ascii?Q?ZncJuMyU2Wd9QtiDjG+BKaL1kMTqp6q4Vcf/fdNybTe9gpdygHPIBfrcgvwJ?=
 =?us-ascii?Q?D2AwhykSa5MpbEBJNQPBi/R/48gk1/hErUu8ffQ3438ja/Q6dGfmfhZvQrZ5?=
 =?us-ascii?Q?Nx6oavE1ShNv1XSI4fk6PoBHass0Dtv9P+/E3rSqxGAN7dISBGGhr0kmVi/9?=
 =?us-ascii?Q?dmga1GydNwtqvOj1ek0MGwKnmTjcjSjNMHCTTV5H1VGclS+mMX3ZRN668rFR?=
 =?us-ascii?Q?A5FohB/kWNZdfv8GUrZDrq8J1yTGzee+44MyO+EsapQm0vmWyEobOdDMzV0W?=
 =?us-ascii?Q?Vb2npuH0s/Yf0ULyaSNKK0TSTEmrhnc0eR0X0ZMmVmxKi5B4gFrw9yoYqKfO?=
 =?us-ascii?Q?KW1yYjrwgUgEecqbtdVZEyARYOu8YpxXfyVXX8yRODq5P9JY/SshvoQb+vPH?=
 =?us-ascii?Q?PuKxSrl5nGxnvNhPwODisyKhjVIDsy/qtrAQcwZKNbN8c1uKT6cU/3lmJYMe?=
 =?us-ascii?Q?pbNocCGb6K6uxaMnpVsv9H2hFeQ7tL7CxBbtpqVLLRKRnbG/iVHuwovBEMOt?=
 =?us-ascii?Q?Tnv7XO3WGwggdlUVZ6pprkdAV1tpcGQoUSKdkbEP5g9JGcDp0QXKTXwhPEjN?=
 =?us-ascii?Q?oSIvsbwpaQqAO7P6awgU3jcCqFcljGzPOQItZ+ClUqIzfTSBME/MwxMBxYO8?=
 =?us-ascii?Q?T2mjgrd3Smsf6eCNN37H0tCWVY4TZo1z6Xwrl7TYViWcrEbiNfTCXG+Imp4/?=
 =?us-ascii?Q?OZfMGrB+RbqSRlvkeztCEzKvOUcphMweWeUjshItWF+GdOQFUlFzNNXFB8Kk?=
 =?us-ascii?Q?PxK6ZO2tpdthfwsmfG4wP2/RrNFyLE/0jRMS/NVAv60C2lugObff2Uak24K6?=
 =?us-ascii?Q?zFPFsPzrzMJwSeYY5ZDfMGWVc+qjFKy78MbuEo7YS0vmJz7fLQ+jr/KTJGpV?=
 =?us-ascii?Q?n2nRpJb71SvRXCyfcrfJ21NB1CpAk8HxvAOlsqlcA7IgBGwxEYvaOsEa476L?=
 =?us-ascii?Q?U3A4BsuwLXNMdaoz1yrjD2gH78upnELOlwltuBBRE1/EqvFJNPmZem1H4VDj?=
 =?us-ascii?Q?XPjx7mNri5PEu4NST5nULMrQvz1Zl98p4GEsNbkZyAVKqn3uRnXovapf7Ami?=
 =?us-ascii?Q?rfNE0rg8RyNo3quZ0ZuoKf/iX8532rpBxdKR2k5qj4YwFMOsFiOYD4Ajaj8V?=
 =?us-ascii?Q?hLO+2kGpQa/jWgDI0n5f1Uhir20pGzaM3r+3IDvyb3692PcWWk4Txb7s30PN?=
 =?us-ascii?Q?814Vh2nvn6ULVZmfRptiEoTy9dTuAesH2VOyrG7bcum3/1CZl7YKQbWXzzq/?=
 =?us-ascii?Q?GO6/OCec6omBOBW7wsp0beXn+kQAeDCkFVXayn0TaGicGkk2/4+qHKQNHDA7?=
 =?us-ascii?Q?9lcMu6aksjSIntXH41uQEWVHfuTCVl7iLo5ziZQ20anq4xQeqI5WSnJOKHPu?=
 =?us-ascii?Q?V/9fXMBCWIyN+o26Udx8beyTSqulqS8DT2dVmFnwFW0oQwvaD9Wvtp+y+3Xm?=
 =?us-ascii?Q?ceCmPb+0l6L77aG64+6sK8AoXlUpP3h+f6wf/2gOrcQx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c43097b-bf79-416b-110e-08de3c0f8cab
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2025 19:24:21.6470 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ioAErjTe+0S1Tfm+9K9GOBgNonr9+8dB1ScDRHNIcE1T/gvYI6z7xeOmVgzqKwgS1KLFuL1PPNESUbKjp1ikqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5112
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

Make sure that state computation fails if the minimum/maximum link BPP
values got invalid as a result of limiting both of these values
separately to the corresponding source/sink capability limits.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9453447905d21..165a6704922a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2645,7 +2645,7 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 	limits->link.max_bpp_x16 = max_link_bpp_x16;
 
 	drm_dbg_kms(display->drm,
-		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d max link_bpp " FXP_Q4_FMT "\n",
+		    "[ENCODER:%d:%s][CRTC:%d:%s] DP link limits: pixel clock %d kHz DSC %s max lanes %d max rate %d max pipe_bpp %d min link_bpp " FXP_Q4_FMT " max link_bpp " FXP_Q4_FMT "\n",
 		    encoder->base.base.id, encoder->base.name,
 		    crtc->base.base.id, crtc->base.name,
 		    adjusted_mode->crtc_clock,
@@ -2653,8 +2653,13 @@ intel_dp_compute_config_link_bpp_limits(struct intel_dp *intel_dp,
 		    limits->max_lane_count,
 		    limits->max_rate,
 		    limits->pipe.max_bpp,
+		    FXP_Q4_ARGS(limits->link.min_bpp_x16),
 		    FXP_Q4_ARGS(limits->link.max_bpp_x16));
 
+	if (limits->link.min_bpp_x16 <= 0 ||
+	    limits->link.min_bpp_x16 > limits->link.max_bpp_x16)
+		return false;
+
 	return true;
 }
 
-- 
2.49.1

