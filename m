Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 269CECD6952
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 928EA10E6FF;
	Mon, 22 Dec 2025 15:36:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZgPp0t4U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F02D110E6F5;
 Mon, 22 Dec 2025 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417794; x=1797953794;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=91Y54L4XQNGNvlSHVdveDSiG6wtTiAc78CfLsYZXeBs=;
 b=ZgPp0t4UWW0CnXfyP8JhEXDD48ZNKGkjWEr6U5hBRXW4kaw/BMN8MRAU
 RasQo3RpMOXBhJ6LZAv4QEa5Z/FomgYio3TPTdkS5ayTher4OwhJAm0gc
 /+BNYABnmFy4XGdd7Z9p7K6ojUipHwxvueTP6nNHKmzcs7ufZeT8HBTt/
 RwWFhIH73HA0G3JjYVOYDxWsAgtSMU1w5wyiiFiIRRJSmBr27pL0G+2Bz
 Vpun0tQ8PscYWiThOo6J9S1PRqtDEQxcpZeL3puKpfgbIGwfHmwtGc0ds
 9bN+dh0v5cVoxQSV7S8hUu1Z7Rj2gJ3W5q5vVpGONiH59lJRW07hA5Hsz A==;
X-CSE-ConnectionGUID: fyw0YkjvRAKc+SPqnak9wA==
X-CSE-MsgGUID: x1ut/U6mSkuomRqlAGa/Qg==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68211499"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68211499"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:34 -0800
X-CSE-ConnectionGUID: Y6lzZaVpQuqYygmpCCQRdA==
X-CSE-MsgGUID: YgZaPhvtSdCymOJ5uvbBgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199854982"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:34 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:33 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:33 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.12) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LI1nrYdl4y0FVZuCC/+L/b1O7rlnoCJrt3vgM6Wt8rxYLBHSXYBFObXSaQnA6hjXPBEMGw2WL1WVFmsCf833oGf+I3DRGCnz4vXjMx2DdOJuLNBxmyQAlQsChFmIRXlXiGeeN9OgTqNnC3tULybZr5lB58bWO8XGacMl3e4bMZTfg7z9dMkItM0gA846JR/0itVGek6L6Fui37Yeljhz68bNtXukxnvjNs/B7DCaxDwCJQ6ML7xQxQ3frGv3FSNKSZP9MaVax9rN58VKGVhokQLRtt7/d/qPQSFMpW88M/vUGZbyejXTVK0QVE6J1iyCnokDHeccB5N0+pL/xtHoGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oOE7GeiIiXXLR5/kietEdk3YYbQI0KL78HFM5p181yU=;
 b=RFouhdBONMqClFFhdK4wMlDmAk/wlQMF9kXqM5ETjNEeWFwHhgqZCELq2HMlpPFy4DItNcmMZ/upOgnvTfINn67PFfsPhGllLbNurHd9twLnkehtMxPxGmoUMlayBRsbW7grBDU2smnB4d6Z5AvBHHIvpnFA1w8vq1JfYPpR6Hpxzq51mi4ouum2Gn+ipcQ0eGr70IkX4CgCgYtgE66QDjpY1Cz9T0Q6Qcm8kMQ67jzkCPzaieQYp6YCFtk2+Jdcwl7ehy78suQQnZU8AsraN/+BMRSmA8FYBp4f8pzIbIPhe7n/Hxb6x0vPVQ40YJeOdQEXy6kYqzXGd+azKfyEHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:30 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:30 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 17/19] drm/i915/dp: Unify computing compressed BPP for DP-SST
 and eDP
Date: Mon, 22 Dec 2025 17:35:45 +0200
Message-ID: <20251222153547.713360-19-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251222153547.713360-1-imre.deak@intel.com>
References: <20251222153547.713360-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0569.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:276::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB6912:EE_
X-MS-Office365-Filtering-Correlation-Id: 6923a825-74c9-40fd-bf6a-08de416fe10a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Fqc9l7QB2R4zxap0iH3Ra+w4IJyr2Amxo6ifeKV2uGukmd4TQVyxn8WMKRPW?=
 =?us-ascii?Q?crDbZ8lQSiMQqG4Tgj272eNjcO9erAMICB1vOVe6/D6Ndj1IksSvH6CBiqhN?=
 =?us-ascii?Q?XJRqMc4sonRxWoyk1HPrD51wpIQVYaQWQMMVZYcOeXG+g1CNbWLGZnVoNhsz?=
 =?us-ascii?Q?2yYy/Ob67bS1tf3G2KYjYcPtYvRST+5N1L/7JlQILSFYEGg3kUfuacmChDLK?=
 =?us-ascii?Q?ztwynGhH0wCOfYhznx4P3f2V/0cx3k8ht2PghvKOofs7MTalngebm40KfepV?=
 =?us-ascii?Q?HqHHRRoRpaw5pQmAhKytrTNwLHQh66Xc5hPuoh79MnjsJRG2J0nclXzHhM48?=
 =?us-ascii?Q?JsmVH/70Yafvh6n3GlXvtJEvF1V+K8UUhT2mdlqg5yT+GLUmUmZ0bwtYsPJz?=
 =?us-ascii?Q?3UiwQjEURpoZffmqczZ75k50A2rrbg0maSkrxyJKLTMWSkqwHRZyS30VltHf?=
 =?us-ascii?Q?gkcu9EBHFxFoQAD0xy1dcbz67NXW8PItMKm60JHin7t+EnToswdcQSDXi+Vv?=
 =?us-ascii?Q?CxYyZlqBTYzH6yLEVBqAn0iHjsfzuQxetXjFzPlEe1klkQEIOaa4vtIHPmEC?=
 =?us-ascii?Q?irCEmM8ZZOthcElXJ48UoSHbt8PDm0l3xqcs1Ul3IenlCDfJNc5YViMM7DfF?=
 =?us-ascii?Q?Bb4RKDw3M3FhqH/SrjEVzWhZzyMRH942s+2djpGoXxDwZGb4hJolSHeWTHxr?=
 =?us-ascii?Q?MQgm4unTGNQF5dm9x4PcEedLBkGWYOd9gXqf87WYTuRKZPwbU+TyBiq74m5R?=
 =?us-ascii?Q?Q/wEuzDkh2kAkmom/Dek6wYS9JDupVA66HWBUIwK8hV/FypMdaCnLaoNGahS?=
 =?us-ascii?Q?lJqE2jzWAcfpZVKTNV3YQM9bNa50XUq7hOSwptpDXHdQqfZPQCWIIhtnrFpB?=
 =?us-ascii?Q?0rf0t5/wnmorZEmcR/bfy7KH3z5+M13WrDPTh6tpoekGku+HtjXgXaNlPc6e?=
 =?us-ascii?Q?ouANiK8SFwD8l0TIksdiCRdaCaXktAYQmMqqeNtRfVz428XOUpWmFWAivRQN?=
 =?us-ascii?Q?tjTDa2EUXItmJpQHZDSb6+WDyFTMYsNqyIU5ecjn/HPc5W3HWHIqNNVCONpU?=
 =?us-ascii?Q?c4yAcObsGEE8o+fotQATUbCO2lyqvNgw1vFAoTa7iq+0a92fc+xqjnAx6vRx?=
 =?us-ascii?Q?ZHwk4YkIzyzrbELiNq6MDoLSbaZM3BqPa3kc/8d3AqC3d2d/vJGwlcJ2PFQc?=
 =?us-ascii?Q?kbM4AKwt+mJe9T2TlgWu6SYudvAP4kBRvf3x/FvLyKIwHK8jLaMusUx5Jgwh?=
 =?us-ascii?Q?3RwYfKKOt2wYQRw9g5LZlcD7JlbeAiIspHCvrMGjlGgfeu8ZXw5A9CznGag9?=
 =?us-ascii?Q?0zX5MQlWFTvjho3GGMwJoesD6TLtJxQwwRsD+QGAeIHvzW/ypMesAwkdlY+t?=
 =?us-ascii?Q?ppEvvnH5cShMgq3XcNjIDSMxJgclQacPVEx92Bdq6vAg9oFNFhkyV2WV8efc?=
 =?us-ascii?Q?l7W/jQoQwwGLM3HNFdOfFCOXldz+1WZQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xyznmP3mODPIU7g9EADpqZt/vxJdilx3UmX97UP5i5o763VvIFV0MiVvfY/d?=
 =?us-ascii?Q?jt0GdnRVKMKAw4LFf25z8l7a7c/ghefDHieWt7iXA5f8Dk5gPVQB1Kb5xTFT?=
 =?us-ascii?Q?t368Ee3j1awHZ9NwmmGx4Cw8V9l6V3AOXTGb/WcYW3TxbFdMKoAhQu0xFJ9v?=
 =?us-ascii?Q?CPkBuZahRitom491MqMcF4YnFhraxA6yJ+r/aTZEh95QDkwh5g1N7YbnOaaD?=
 =?us-ascii?Q?AE++jtuTry+tBjoFveBIrd2kAlbMiOWB9s0tDpRJY5OpDTlDIWTxrJY4g3AT?=
 =?us-ascii?Q?bqqbsxYNnmuGg9gfYTRHHrdgcWSck25gO4A2yzKwVDQ0CnoH3p2ppVsGX/8C?=
 =?us-ascii?Q?sJlRT17wq+4D7/cxosqBKzwq9sApo5/9HNxVtQHAraVuOpY/w97uuNG8Yvsp?=
 =?us-ascii?Q?k4Sj/How9klt+fcJCem6beSZUNKyC/IngWWkU686GDoNun4sRuxaQ9WArSsD?=
 =?us-ascii?Q?gpZcKR6Cmdbh20g3C4QNMlXWS/IJIdInXHd2uwrky7y8r4lk8jI6Gynv/tSv?=
 =?us-ascii?Q?55Qve7qHprWzBnb2029eW7NFLXxRGyl/Y4gNuzGoM9gWnC133MUdPk1bnSC5?=
 =?us-ascii?Q?Y9gIdYz3FFnFCS6lgrlDQMJYoDbxsIKVUCWf9UlMx0UlFKoSHy8AASijeZen?=
 =?us-ascii?Q?QgeObSQYhOA+smN+AA5GMCATdzKtYDdY3NHeumI/Mu4Om5DSO3mODa9NS1cB?=
 =?us-ascii?Q?/1pfc3eUaoNDO1CIQLYkb9a0tTie26WjHaPLfaRNBPXJumQ81cYGrNX3uxUE?=
 =?us-ascii?Q?22/W/FchX/76F5JWW3fnISOH5dcDb7OOLsMuTZ//P1esLiUFFIO0mrJlmUqT?=
 =?us-ascii?Q?XAMqQseo6aGCKmXawUdrmx3cvRaTBskifQpbXr71g33fpIg2XCR0fd6hv+Kx?=
 =?us-ascii?Q?YWqOq0qfIhBoYAkJhnMaXNRSOq2RZcuELBQNbDSTpMvNfx2tSRxmzrtSTox0?=
 =?us-ascii?Q?XNGp1SMT5+BixR8csbUNHhZM4e+/9xM89fwG5+PSoij4vbAMIeL9KmMEM0D6?=
 =?us-ascii?Q?D8vBdtCrDZihD/Dc4MXRUJGmOnEIj8BTj5HeejuAUgVNKdvv1Cu7uXCoSuNE?=
 =?us-ascii?Q?4KxDdX2CbhAbH6PYpTiPnkjOnt7tsEWvh4F9ZTNxmdCcxaKXJElKP1LAHQQ1?=
 =?us-ascii?Q?XtUY674pLDz7ZAaeRECFvz0kaDC0XVI4e+nWN6NhPRbQL25HupdH+H/U7NWw?=
 =?us-ascii?Q?g2i5qtxM7zZxD2yxHwTbWBSlpNnNPjwqht4iDZu/BOj606QrSOE4IALvMeEj?=
 =?us-ascii?Q?cCdMSfqiPPmG2AeIp5rE2PzhTlbJwvjOtsddQditWlt10H0B+e6LuFP3tdjb?=
 =?us-ascii?Q?L5DNQF+YbEVqTe27hJR1qjCUaszEuth9Fww1Byae+01mk0YeCO0UrNM0dyoG?=
 =?us-ascii?Q?r074gZhLojJ1AohLOHQBPRwUJT3cbY7Yjvg6jsfCp0h1e1LBIbaHLe0QLQWk?=
 =?us-ascii?Q?QuKMYxA0mSCHcIbDKDMSd+saRXV8/G5Y86gpEAY7w7ybIWMpKG9AFDUoyio+?=
 =?us-ascii?Q?XZkV/N59ZwQI0aq6x3DEriqm1p3mfoXFHdNugoW5FqgnrjwKjuLIwK9R4Mhy?=
 =?us-ascii?Q?fnwJoC4OAZReIdxann0v4Q09sl6CCryEZ1C48B2u5RwUeUB0BTCHLct3Rd32?=
 =?us-ascii?Q?KJtY7ZQcK9jqD+NO2RJXJUwBr6dAOMFJugbTacmS10ny3c84nsQbJ2q6DGDU?=
 =?us-ascii?Q?5CU4QH972FxihzruyCwpOKOe4uk5Y6T2ucgA9JUeTw3DOLlKDZum5x6ieh9X?=
 =?us-ascii?Q?msJRYtPqz6ahIYErSOeVGRq72/7WY7EzWineKSzsot1elFHKYvMQUuKCCTxQ?=
X-MS-Exchange-AntiSpam-MessageData-1: XFR7RiEZzFKHcA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6923a825-74c9-40fd-bf6a-08de416fe10a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:30.7353 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 90yMnYyZ7k/AZYZQBJwPuyAGMoCU1vbn6aW0Cx99uWTJ+SmS7ywUD4FdosTl1ewiXeeV0gXSMxinnMwg56xrrQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6912
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

Move computing the eDP compressed BPP value to the function computing
this for DP, allowing further simplifications later.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 75ae8811442a0..96fddb8c54c3b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2227,6 +2227,14 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 
 	max_bpp_x16 = align_max_compressed_bpp_x16(connector, pipe_config->output_format,
 						   pipe_bpp, max_bpp_x16);
+	if (intel_dp_is_edp(intel_dp)) {
+		pipe_config->port_clock = limits->max_rate;
+		pipe_config->lane_count = limits->max_lane_count;
+
+		pipe_config->dsc.compressed_bpp_x16 = max_bpp_x16;
+
+		return 0;
+	}
 
 	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
 		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
@@ -2319,9 +2327,8 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					  struct drm_connector_state *conn_state,
 					  const struct link_config_limits *limits)
 {
-	struct intel_connector *connector =
-		to_intel_connector(conn_state->connector);
 	int pipe_bpp, forced_bpp;
+	int ret;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 	if (forced_bpp)
@@ -2329,12 +2336,10 @@ static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	else
 		pipe_bpp = limits->pipe.max_bpp;
 
-	pipe_config->port_clock = limits->max_rate;
-	pipe_config->lane_count = limits->max_lane_count;
-
-	pipe_config->dsc.compressed_bpp_x16 =
-		align_max_compressed_bpp_x16(connector, pipe_config->output_format,
-					     pipe_bpp, limits->link.max_bpp_x16);
+	ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
+					 limits, pipe_bpp);
+	if (ret)
+		return -EINVAL;
 
 	pipe_config->pipe_bpp = pipe_bpp;
 
-- 
2.49.1

