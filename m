Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3355C8FC95
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6515410E892;
	Thu, 27 Nov 2025 17:51:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NiBLeo1G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 213A210E874;
 Thu, 27 Nov 2025 17:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265887; x=1795801887;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=9MlP+8I6GHR7X+BhkFp+s9snIe794AnLYsB8Ce1BLNY=;
 b=NiBLeo1GcgqPu+vuOnEDKJE8HYQVDBIU3kiDSLKml/SIMAogi9XIArjn
 6+MPh/kioscNXcux1xllxJ+qqeqZyDDJCukSvZ6ylKAVin8SXXFUE0YkN
 Sj8yjs/45Yn/bjZRtZ2xcPxRe/DPgmaIzWCMucxZWFKt7f35qQWXodSWZ
 gDcQL091kK6VUYzpAlH0YWspxSQEDcDBGqcCyy0F4fZnnDqskhVja0lmt
 Q6Ev513AWLWphUgeWQDIJFCQngEIdwHpm/s8R/9ddPeWrWdfXrjoux8GO
 2Sz9IKY2U3Z2w4Kacb/xVrRqosFxRJ4+hLQPLonhgaAxDgG0CKUgOZWAH g==;
X-CSE-ConnectionGUID: el/mnmUmTeSfspFbAswLPA==
X-CSE-MsgGUID: 5g4B6p3PQh2hHoPm2D05ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77002984"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77002984"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:25 -0800
X-CSE-ConnectionGUID: WFMPDfiaQs65h9eOerDIpA==
X-CSE-MsgGUID: jmstGqALSXWPRuJBbyshCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453618"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:24 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:23 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:23 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wjIARfdZl6l5dwmcCmTkLMKCleg7ZFuxKn1lLGvkYsMrxkFRPsDsr/Q2Yb59ljImhIrhc9moO7DoQwpaGd1xmT1Wuva5w04yclBc4DYgyeSUM7Pn8+jeb9L2/WguSpEgvO0sKnT1F5kfYjmQrGh6IzlNx2x0ciYec/E+3wcpfIQCL1oTcZ7XOQqiRoPleoqZwAyrFK7gUp6WvTEgfl9gz5sEY4prmHqOKb9HRIrWxw5FmzwsaKrEsGAlGaJfXoOeMDuoZ6IWaGqoOGhiwRQLgQjo8K+Nje1yLye5cIqpD+/MJ85LvVbutr+uRaHuz70lLRbV8GcIdYHLO761hzy7gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QAvsd5GIDJJ8ieJBG0ldEo/R04AIyvHvGVW/tYgPVl8=;
 b=PmKh4QYi/oRonVxfs/+zCnnXUvqPZvJolpBOzNgMSn2UMoO2jHLBmwKSHpzZJqsfrL0WBKFpphmMeaXH4I5/O3YJMJnXiFYQKlYptYUmk6mtI2o+i3TTDKd/niRs8zzQTvhXXIYBC3jZ1fwTlihtk7sdjPV00KEniUz38i0f9ucA7u2WPbDX5gffaf7dJ4aLELlaQKCXdJeUMl7gCLnLdMId9Xsp76OmmIpEUwE9uAyvyKBrBxSQqeJDNUdMtkB7ur4Ig4E+l3kvyjvwWg6j2mAPFiPUWrWDYdpYOQqIjHuGnXERJ0J9xQzxARSCHMALEFfylbPgwH7O67Aau0SDzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:21 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:21 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 25/50] drm/i915/dp: Factor out compute_min_compressed_bpp_x16()
Date: Thu, 27 Nov 2025 19:49:58 +0200
Message-ID: <20251127175023.1522538-26-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7842:EE_
X-MS-Office365-Filtering-Correlation-Id: 2fbe7813-37b5-499a-a3e2-08de2ddd9331
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5p01O9Xh3gikWX+uFF9w/VD6mp4xfFuQTuFQN/l6M/XDKxIH/+cUt+9Bv/aa?=
 =?us-ascii?Q?HLbomA5kEALtAUggvzqcjUPWxVGvyMDvMfeat/Te+cbnwpRm+GY9ntsz8NU3?=
 =?us-ascii?Q?2BXHarMcQt+IWkuAyt0OPmTgDwzDjrpxlqExmzrU03QTVEdsdUo3exPnUT2J?=
 =?us-ascii?Q?pV1JKcI6NLsn/DHY1Q/zMQ5u4Wt6XBrSegr0Z7Kd6PRpdcKaBJkYeixykieW?=
 =?us-ascii?Q?+jpxX5z2EQ2VqWLSOL/7f0oCZE9p4VTK6ZiJcytcoPzwMQxfcRbKwD08RCGX?=
 =?us-ascii?Q?eu1C5W/AaqBwXRitublxdgM0lrB7HmrWdZz4gUSADGlYnA/i7bQZoOosasv/?=
 =?us-ascii?Q?9VtMFIk/Y7+HetaOH2F+5zcXpf1ygGmwuIM8w9PaUEQYPRAOLyQjf6xxY5tW?=
 =?us-ascii?Q?RDAT5gLgoSEHmODWmyckJT6yN4dms44EkZYpFUNHz91CSYn0ubL6a/yWDRUH?=
 =?us-ascii?Q?wPO2z01diXsUgILQaocEM7nJAV6B0ftqrHVS5nmEB8RWWa8Jaen3lbppgOOf?=
 =?us-ascii?Q?zS690JRDIUgJ6K+jpSTJTpqv7QIMfykm/Tm4vQJ2ph8BP1vATu7RrLNVFexA?=
 =?us-ascii?Q?WIBa6E6EpyJBlU6/uxZYvKzs8yxjXfg/XdJYGBP/Ulg4Yxbd/ytuVj8EtNWw?=
 =?us-ascii?Q?fpzr6pJBROxKf2P7AS37bWFx5pcs4fADjsOy4izOisHqGmT98k0JryH4BNwz?=
 =?us-ascii?Q?pcxW5IZ8SnHabHwGuUdVeOZrHmVngGzYFwRQchb+tYawYpKEgmMLDRnomXxr?=
 =?us-ascii?Q?Q5GiK9L+UJNFGM2tfJGewBY4Jk+AzJ8bKa02qWNGCPrebkwK2MfClhoLueTy?=
 =?us-ascii?Q?ImdqUDdxcDfq2Tk+qKBQpTdzyoaVC9mf0zjQcRRmgcoM7aVAe6NdPf8zwxWZ?=
 =?us-ascii?Q?0HSTiQIorDaIWMstxvJu90tprAdQtrUaAhA6h+zKEqh+J/R0tQGU3VVx1/fY?=
 =?us-ascii?Q?OYyTspzcVroN4o3Gu51UqAHFqYBvCveQcdOtzM5qCx3hi5AYQx1MWSVYfnGb?=
 =?us-ascii?Q?V82xXaLrffsWc6ibqsDZCi4dVMBeT4+uaH+b2M3Uf+K6EFlH+QDtfh04qFna?=
 =?us-ascii?Q?9QfIFrhuCyK/znZSp94sBX0VO7Ay52RvLvw31yVYKiR0DbGIa2ajv/38KaXe?=
 =?us-ascii?Q?eix0rFQnTzEGDnNfwulh/8M+2p+U727ssKT6ZcmQJ5mK2l0YuQB7geLXMOIl?=
 =?us-ascii?Q?yzWaejF2rJcKzuJikZSEFtmrWslZnnSfaMMjTLbH9rDExLwD0UVW7Gy8NEMy?=
 =?us-ascii?Q?vi9iGMPSzB+K/T0434HbfZofj9Hvp95CiKyvCybIFLCQAcXzuB6+OqiGsIhs?=
 =?us-ascii?Q?3QVqlG6uvZqDDrztTkjKMvivoQTEB8r8J46PdyU8WGiqQJLZNVUwo/CddWDv?=
 =?us-ascii?Q?L9m21xxbmOcv0u0gp2THYVkRs85BjJeOT23XBd5uZpaklOp28XbMDPpNiQVr?=
 =?us-ascii?Q?gUhzTtEM0pRucSTIV5JBb0mT7/1O+ay1?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mS/aIusVB8NefLql7YOh6wGCH+wtNvkX0JxACKSBkCj3i0wbp0F+3/KO/8At?=
 =?us-ascii?Q?bQhSVZOXAok4QMXyHqfibdxr+NnlHwj32InRVXiaP49EtSrcV3KlhH5AYLoY?=
 =?us-ascii?Q?bmVaL8z8U0y2csmGD+Fk3iR7PXUk1JoxinpmiNNQdyWc3O9yMFE4GnTGyPht?=
 =?us-ascii?Q?vxvQeABZEZUnFHpbK0VtiMBs4X8A8IeAHojhKoXBELE4UjH3D1f7wVCCGOH1?=
 =?us-ascii?Q?EV9W9IrRn5CBwhiYa7q+CmEuW24XRfWkowTMB2w7IoM0qvZg3i3Bs4x8CizE?=
 =?us-ascii?Q?/44ozFaNeYPAWozCTsbKDeDXmtrO9pwcO7uxJMaI9rH2ij+RLfZ+PgVSJJhJ?=
 =?us-ascii?Q?APZxn0xtaFb0u1ZjARs/IAXpWfhpDzYxsGeh5Ouj9g0amzN12ei2yuNRVCp7?=
 =?us-ascii?Q?HyN9fnpU7NIpb4nS1NWO7RS7QFlBZCQOzpo3JFkIA6wHCDtuVHaUH9AC6BPv?=
 =?us-ascii?Q?Z76YT6JIDgwplLEBq6vIaqTv9e1TnokRCaY40UFi0hO+xcSkweFKS0xFbS1K?=
 =?us-ascii?Q?k9WUE93pK6TfmHmAJBUFQYK9TkrwUiFmv/Kkew1bjxcK8wgu1LsyWqBkv9PU?=
 =?us-ascii?Q?s8IjFlYCchjfwXrpr5Q+jRTNDgQ3VTZ2zfxCMzSAOykZTuWzMk4mM72vlf/r?=
 =?us-ascii?Q?YK8ktUCosH/Wb4Z29mFGsP+LPe8CjnlVW6MTCTCPXQomwp4sg+8ZNsEDyOfu?=
 =?us-ascii?Q?Wt1Q96mTOR6ma8SecMAaXLcn1lUEyMFRvFt9XrypdJftHxl0fBaEoqrRv31Q?=
 =?us-ascii?Q?r/zLo3xM9xRGluIEDmQvsmvO270HwrMAvJT7nbozZGXFyct+RaKIeUnLU7be?=
 =?us-ascii?Q?kRrdp4/csHjReWKaDQii27nvBxBYTuVKUmSD3ap0zp6u314+QG0WNVbzQeX2?=
 =?us-ascii?Q?1HMLN3usRrGE0Wa/WbNuww2QYx8tr3PnHo0vwPl/eh3Y3WDqINiPHdeZMC7u?=
 =?us-ascii?Q?iMIO2/8ogou2GJqkR/+irA/0cH0SArIfOrD5DI6bHoVbJu3UfyF2WKeiQfOE?=
 =?us-ascii?Q?gutoUwQtdlRv6mvimfOCbC9t6be7tLavLNK8tvtCXupgLCdlDrNu7txHGZgd?=
 =?us-ascii?Q?4iZr+UO9hb8BpC8lIn9BUTvtCEz2/UJWcHlhhMzrLR5uOB6pY96Q2vbkrwkf?=
 =?us-ascii?Q?A5V29w9us7vIPTaBqj9e0hLFbtZztL/2UbCPWhLZXKKiHcycm3ATIAn3Qnyk?=
 =?us-ascii?Q?/ZV4mckSeMXuPaCEwFPjbG4S6D6Nw6ht2f2yOj8fbw3oQbjXzuY1TzVr/0LX?=
 =?us-ascii?Q?Epm0iwQV6Puy+WY0W+9tqO+rRAyiPhn1LdkngDSOrnOsH1A/ifYkkqnw1ag2?=
 =?us-ascii?Q?M/DOy7wEyTPCpcobJGFwz3cgK1KuoNYNkiMMwr1foTW8ODsCE8hnwPxJqDFF?=
 =?us-ascii?Q?8s7/EnYi6NAhp4ToeFNTTLyAV/Z5J3WzPrO4Afi/UwNfcqBH+5JTzQATsAEW?=
 =?us-ascii?Q?2ONJguYhq/UhZfxAYjqh3dt7W4wekA+DEhOT4LHDsDUf6DbjnZ46hESJSj3O?=
 =?us-ascii?Q?kbjOD/MVVsSX0cbCeN1c1bHwqQVrzLSTnj5/LR7MRYy7Tj6Xfi9rg1mz75vn?=
 =?us-ascii?Q?dljKvikNNF2bhlGWBGqr9WUHa8EaeKR1dPtpXT9sodoBpdVaYKLQxUZ13Oj4?=
 =?us-ascii?Q?fBHbrMVQcnbRHOfuXB2i6BB+6OrBSj2gjqvLliPB/b08?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fbe7813-37b5-499a-a3e2-08de2ddd9331
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:21.5545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o7McITwCPX75se6ODnBgWXJe0DrVWhjNjoJ2wYaVGtWwzpVC1GVVxAGR/NTBnhyDH6OsLavt8hiupDRXCM51NA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7842
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

Factor out compute_min_compressed_bpp_x16() also used during mode
validation in a follow-up change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 26 +++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 193d9c2079347..2a5f5f1b4b128 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2645,6 +2645,23 @@ dsc_throughput_quirk_max_bpp_x16(const struct intel_connector *connector,
 	return fxp_q4_from_int(12);
 }
 
+static int compute_min_compressed_bpp_x16(struct intel_connector *connector,
+					  enum intel_output_format output_format)
+{
+	int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
+	int min_bpp_x16;
+
+	dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
+	dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(output_format);
+	dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
+
+	min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
+
+	min_bpp_x16 = align_min_compressed_bpp_x16(connector, min_bpp_x16);
+
+	return min_bpp_x16;
+}
+
 /*
  * Calculate the output link min, max bpp values in limits based on the pipe bpp
  * range, crtc_state and dsc mode. Return true on success.
@@ -2674,18 +2691,11 @@ intel_dp_compute_config_link_bpp_limits(struct intel_connector *connector,
 
 		limits->link.min_bpp_x16 = fxp_q4_from_int(limits->pipe.min_bpp);
 	} else {
-		int dsc_src_min_bpp, dsc_sink_min_bpp, dsc_min_bpp;
 		int dsc_src_max_bpp, dsc_sink_max_bpp, dsc_max_bpp;
 		int throughput_max_bpp_x16;
 		int joiner_max_bpp;
-
-		dsc_src_min_bpp = intel_dp_dsc_min_src_compressed_bpp();
-		dsc_sink_min_bpp = intel_dp_dsc_sink_min_compressed_bpp(crtc_state->output_format);
-		dsc_min_bpp = max(dsc_src_min_bpp, dsc_sink_min_bpp);
-		limits->link.min_bpp_x16 = fxp_q4_from_int(dsc_min_bpp);
-
 		limits->link.min_bpp_x16 =
-			align_min_compressed_bpp_x16(connector, limits->link.min_bpp_x16);
+			compute_min_compressed_bpp_x16(connector, crtc_state->output_format);
 
 		dsc_src_max_bpp = dsc_src_max_compressed_bpp(intel_dp);
 		joiner_max_bpp =
-- 
2.49.1

