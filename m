Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E7DC8FC75
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C97C910E87C;
	Thu, 27 Nov 2025 17:51:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fwjZwxMl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A24610E86E;
 Thu, 27 Nov 2025 17:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265879; x=1795801879;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=35pev+1KtVYQym3mus9VuaENZlb8YYTHfgRGvoLVCMI=;
 b=fwjZwxMlESGuFf8+orw1xWDWElbjk2fMK64Tb/6fpantNSd8ZC4rDn1P
 WA8gqdOSX2voTboEvqOf841sedfWooS9LCfS5GDwHZy1zufFYJqLGVSZl
 DjU3p6rhA/TNtXWme4nHuXIofozvbGO+TDXXMPq0RPYzR6J1IRVPzEIam
 NJeLJ3fbIlvajBWmU6aVdXz2oei3p3Zm8SO0nUu2nImDFod+0jlbuiESy
 ED7GgsmDz/iVDMYExiMg6MBKV70Fbsg36C6HLLzVJ+FXEm8MPSjqHl+f6
 IZIdfXqpSQiGTl77/h6ny4+4bZzI9slB9fybrywtgZXEzfP9ZVP8Db1Y8 g==;
X-CSE-ConnectionGUID: q8ptjQEOQ2GW99MhnxlLcw==
X-CSE-MsgGUID: l+7ssrpdQOCKBuDQHRWwZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66276762"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66276762"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:19 -0800
X-CSE-ConnectionGUID: 79Q341gtQoi2/ImsTN/zdA==
X-CSE-MsgGUID: P7i8/RCvSg6hvF9VxN1xCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="230562040"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:19 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:18 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:18 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.37) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tE2e97IT8yMsejcBxJGrLFGeszwP8e7HmK9pFmTq+1SGpi3ydXFj1SaEufAvDgKlgHuZw3CfaNGVdmONPMYAvzmUQ0M3zuTd0nEY8sfr2H1UB4FMuK86e2Ls9V2udnzDE18DD3NFH8HXpG5ee3/LPtWtmAy969cIzlIqzzjmS9gkq+p1d0yXaFJaNC3c0sgcKnUfuvQH5N5aYsQMqcZ8pi3EQ5oUZv+F6sK7LH82M4a+QxSAWYdk4DU9NdypDpn1xRPXBgU3iFemjwJVZpu9vmybx3fhkGat9PUoSllNM8ODQ6xJOEiol73X1LNlJ1NX9puNvMP4PxUn14meDxFxCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8wse/9+e+0betlOdC7C94Fs7WSMSZz14uUXn8BG/7F8=;
 b=tbrbsz5b/Voappg2/L0JLjSW4M+ATGyMGzLKNH3W5jHb8f1iSvnk9U+2avVUg8TeaoztA9Ppf6pGsCvN7zc/Cmtd9rSBVl43OmgMZr5xPdp1oMLCTPiVfhdNLwjUEnJIu4sPF4YwstWQy9oiPVBSp5ODytV9hmaibVox8qk7NJPNt+GnCNkCvXUIe+IauQchh/4KrW07wJyTWf2KwFWN+HngJNfTE8LFhUvSqgtlVlyzdC7E8RZsH2CPoYQcSYxz++lPmhPQhNUopCmq7qT0eJ82PV+xRXjQlSBKATWw3L0bXRhR+VfRRTVadm9oPCNaIo9l6w1t5AK7gp5irdLuKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 09/50] drm/i915/dp: Use the effective data rate for DP
 compressed BW calculation
Date: Thu, 27 Nov 2025 19:49:42 +0200
Message-ID: <20251127175023.1522538-10-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 900ba6a5-cf88-4692-850f-08de2ddd86e6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wf3bTeNWiHA3B6P22W7SCROaf0hyo3/E05jnZRvdjZcl91LVxLXgebd/Tn9w?=
 =?us-ascii?Q?DhtDeDm4/RivRusyy/hZ8I7kDj8gycSHSfbD6EqIU1eB8KI2lTEfIJTS6F10?=
 =?us-ascii?Q?i/pzBElwAVb7vTS0D11eGT8no4rFjqfG8KQXNbd5N+d42FNXwLRrfmjltR41?=
 =?us-ascii?Q?7hzWccE3kKIDvwR1CFvh9oemba5vv0luG1CcNHJPivZCD+CI1aPRmyLTKB4I?=
 =?us-ascii?Q?ZxQiPBHfFRyX+7M4kK3+GRCcl98MTmUMku+39t/Ppc/tDIZsktZg+bFt5nZs?=
 =?us-ascii?Q?0zSgpqaNRU+bqQI7H5Y0Coju84AKMfE8iIJ2J9BHZ+wqUY84Dz8wpZ5pPxlP?=
 =?us-ascii?Q?UwZwPoGeDTCFHCCRcNT4EqkvJjASM+P5AIR7mU7TG+HomMXbtItjroXXdgbf?=
 =?us-ascii?Q?OuDZo5Thpd8zyIv47CF38eFFpzwd9Ql9j+RwaEWHPcyO4Byra1q9I/h5KVn+?=
 =?us-ascii?Q?MExiCVwteH0CBc2IPOavPidbndJ7vjJEDcHT8cKrBq2BR6qcQIESpqRRjgts?=
 =?us-ascii?Q?wZvja1G+ieKv1PnuQoW1z9hj0hjvX+zKt/6dSQd3CSCLjaqXlQeGit2HgtC8?=
 =?us-ascii?Q?9+C04KihNYHXao9B8gwUcgjnVpO41BtNg4xkl9GOS7ID94hYATKIcZLiT5i4?=
 =?us-ascii?Q?M9Ufo+ReBj61GniSZUian6wSQrZEYL5OBzrLgfYraRb9q/SBvMPbMpqs+YOD?=
 =?us-ascii?Q?gD1fLsZr/AwX8EsI2rYkhCny2Kpchf2G3kdXasRjXjCs1GssSvErJIa+34pu?=
 =?us-ascii?Q?vBt6JJsDRDv4zz0kI8IzUQgJohJhXjKqlLF/uSZMWAqJeBTt5VmRtv1nCMcG?=
 =?us-ascii?Q?V+KCg5yneEf4GMGSoI8U2XeiSxvmZIMve9x95PUc079KnVu85tKLy1a9RXt5?=
 =?us-ascii?Q?Bfwm3V9MX2uGwonFUMi9rQ6SRVNaWKZK/e2vsFigFTEVURR4/VgS12JFfGru?=
 =?us-ascii?Q?jCNcz/J2b0WM9TV8Uev/Thgu8Gr/KTROT4K5hh3MJCMSVl/xymIZ0HZe0gqU?=
 =?us-ascii?Q?svSs3ppWGZZcUH1vufyy4kvt0n5ujVyGKEVEZdu7USJkYpntBfGxRQQF8HnJ?=
 =?us-ascii?Q?XdMw1cr4M9JPHUMPvl9Le86XEZPImAY0nzlIhnyI4PmzELecsoI0DPTKMJSd?=
 =?us-ascii?Q?BotcHwGpyN5R4UxWYG4gHf3GX8tnYvV29Lfz/p+aPB06DN7963iGEkm2OPtM?=
 =?us-ascii?Q?xv0DgN8Jo0RBv2lr3T/tVfQ3ME/H+ZFiPgiRPKsn0PGPsX/lrWztnWmiyNkc?=
 =?us-ascii?Q?hGvtpvlRzJOHCdRqMuoH1WCi9WSDdo6Y6BCFqn3Kxobei+BEerL0lhjCldyk?=
 =?us-ascii?Q?NWbBegO+yJuZotk2R3L3FKsHEwshjYymiYBPKP6IjQ9xM0FGKfIQKl2dEVYv?=
 =?us-ascii?Q?Gf5Ww8eCZ6PxBK/D9fYKdyyEGapu0ElARpGxF/ueNphySOXzWPVZqlo6t75w?=
 =?us-ascii?Q?aTWu3Pa2Qa/u3NJYW5E4dbRmMEctKx0C?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VHxwYQJzvhwunGN9Bb5VikF5WS4MKzKc2snBXj/DKkexNVSccI92a60NgaIx?=
 =?us-ascii?Q?ebEUkQmRK8+NQ/xVM866InpNyNFxvnTXhZXmKt8f7XUXqijZIicrosROfug2?=
 =?us-ascii?Q?sIyd3Zhx6vzR9H+wXhUE/82BgL4hcn4Xzp1IsiHLs4+Nn8qYHTBNDZ+zmTrK?=
 =?us-ascii?Q?gHE1PUPTMqNgew83P/+qLkVUhqLuF6TcQkA6K+xJfapvop98c7p2UcGaaU8q?=
 =?us-ascii?Q?bPJwqmV5jaSKV+Z24FmkrAUd2BbYMjrBXYcRZLvMdBlDj+hbse8MqKJM6qtR?=
 =?us-ascii?Q?EkK3zp7py2b9ayYvgZKFKZ3eag+v2OVkuWyKScL23ZKwFBQYS5uq7StcgGI3?=
 =?us-ascii?Q?0RcY5twsVgpm9JWiICsBmdojGYe2ZeH7wZOtltOIM4TN9WdOFEt4tPidU6HC?=
 =?us-ascii?Q?yAkXw/IPBTDQwfepJuSEd3+8O7kc6QrM/NbNoFcTsNqmTezQbO/HZIMDZMey?=
 =?us-ascii?Q?3m/HUqjCAF0aYnXICiMfo6cwlhCuxWsDYQaMBaMNIGVnq2mX/pWgtl+hNIjK?=
 =?us-ascii?Q?jz2YubyL1cv33ZwREBgz/MI5+zta7AoL1RPz08S7TSE4kZu6gidUPgxGoqnU?=
 =?us-ascii?Q?qa6d309+i2MpiK6MQmNrjeMFsDJ4jn45vE/TPpksEjBt93a1WIi3IC8KaGLl?=
 =?us-ascii?Q?Pr15jfT36rZlrkwk5fed3VkmLLbQov0sDR8YtHe58pD81CmkBQsXT0qBN9U6?=
 =?us-ascii?Q?IrKyiu4r/b4J+InJOGsgj+m+D2rWGyntqAmxycs3C1F81qxu5TK9lAebn5FJ?=
 =?us-ascii?Q?jSe59qFwC1XDFV3A4jAlOlQQc8BzB8kKJLlth0nEdeXVvhsCM7nT9TYlK+Bc?=
 =?us-ascii?Q?mhTKHGhFITwNl0pARyO4vWj0bBwNgHjvWiDYK5wgAGJmxMt+TdhfP71OJ/Xn?=
 =?us-ascii?Q?+IZfvSTlv3Awjr7e96PJl1U8XflSMgvasIGjtKXJXwU7D4ZqO1kol2xk5zNI?=
 =?us-ascii?Q?hgruH9DLWbKyZxR6fEB9dsVlgArzqFN4DIPr34+t4MNl3CPxaVK7qZRQjTzK?=
 =?us-ascii?Q?dEqbm6cj9imJQHmaOBUKBUD3LZAKEFjUf2Ex+FzQ/LrIlC2YepMNn05bXvKW?=
 =?us-ascii?Q?z/QSttKp6H84cjST81YdYqE4eHz3WFb2tMPfT5kYoPGk26Y0/oPO51E/Ezek?=
 =?us-ascii?Q?T+MKMumjKvmyPOnzLaLzoqV+jlTYcIoLIbaNnTbOb+XvqbA2YPFMjD/GYG4D?=
 =?us-ascii?Q?JFzen9vqGEESMiJQpTvx2o/lk4OW9qKLdyAc7K4jtuc2zFgCsCNdqEqUZYo2?=
 =?us-ascii?Q?z8gus74xkYxOfYOeNrWU3wjm/El9QjUkQSusp/1eaNYS7SGW4phQZi1mr2f0?=
 =?us-ascii?Q?+ICvkEQvxwNX7Fxw8tc46AM+Ho1gkcJCJRwkjmHC19xIAOa0oSIPVRst285A?=
 =?us-ascii?Q?81pKR5a2wYGmB6oT54OYAXBUgAvBcXdAz/XLqDwFOdrHQuFs3/EkIZzdZh+z?=
 =?us-ascii?Q?g+MVD+7sNs8ljl/8sZZiZPthUvYnVo21zVpatnsNIg1DmYxTjH9DTqvFOBM9?=
 =?us-ascii?Q?ZKV3ztcLWrCDO6KLK2MrZaz5dUDSGcu0Mfn9g7ZjFJb3NUI6YiSWKKYsLcVR?=
 =?us-ascii?Q?Enzh5JnKyo7y6ZtscwqshA59lhWNS0s6A8ie//y8lGp1Cfd3DTJCNmefleM8?=
 =?us-ascii?Q?DT3eCYYvHfZ3wCvvGVkLOzsQdLKB8fI+WUbpk0EHBVyT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 900ba6a5-cf88-4692-850f-08de2ddd86e6
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:00.9829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GNr9EQksj/MCaTZXwU/OJDNEmCj4UZ9WKPd6Sa4Hjxr1fyJ7y0TdGi1EoMHv+CNn2YtJjpXBXDs53AGlyS3xGA==
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

Use intel_dp_effective_data_rate() to calculate the required link BW for
compressed streams on non-UHBR DP-SST links. This ensures that the BW is
calculated the same way for all DP output types and DSC/non-DSC modes,
during mode validation as well as during state computation.

This approach also allows for accounting with BW overhead due to DSC,
FEC being enabled on a link. Acounting for these will be added by
follow-up changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 27 +++++++++++++++----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index aa55a81a9a9bf..4044bdbceaef5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2025,15 +2025,19 @@ static bool intel_dp_dsc_supports_format(const struct intel_connector *connector
 	return drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd, sink_dsc_format);
 }
 
-static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
-					    u32 lane_count, u32 mode_clock,
-					    enum intel_output_format output_format,
-					    int timeslots)
+static bool is_bw_sufficient_for_dsc_config(struct intel_dp *intel_dp,
+					    int link_clock, int lane_count,
+					    int mode_clock, int mode_hdisplay,
+					    int dsc_slice_count, int link_bpp_x16,
+					    unsigned long bw_overhead_flags)
 {
-	u32 available_bw, required_bw;
+	int available_bw;
+	int required_bw;
 
-	available_bw = (link_clock * lane_count * timeslots * 16)  / 8;
-	required_bw = dsc_bpp_x16 * (intel_dp_mode_to_fec_clock(mode_clock));
+	available_bw = intel_dp_max_link_data_rate(intel_dp, link_clock, lane_count);
+	required_bw = intel_dp_link_required(link_clock, lane_count,
+					     mode_clock, mode_hdisplay,
+					     link_bpp_x16, bw_overhead_flags);
 
 	return available_bw >= required_bw;
 }
@@ -2081,11 +2085,12 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				if (ret)
 					continue;
 			} else {
-				if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
-								     lane_count,
+				if (!is_bw_sufficient_for_dsc_config(intel_dp,
+								     link_rate, lane_count,
 								     adjusted_mode->crtc_clock,
-								     pipe_config->output_format,
-								     timeslots))
+								     adjusted_mode->hdisplay,
+								     pipe_config->dsc.slice_count,
+								     dsc_bpp_x16, 0))
 					continue;
 			}
 
-- 
2.49.1

