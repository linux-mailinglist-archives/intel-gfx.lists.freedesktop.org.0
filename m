Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6CDCD6946
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Dec 2025 16:36:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BF9010E6F7;
	Mon, 22 Dec 2025 15:36:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dPQrB9Kr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 417CE10E6E6;
 Mon, 22 Dec 2025 15:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766417791; x=1797953791;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=oDsj9NCcA/GinFEG3fa+zBadEf/9ND5c3cqe0wHxyhI=;
 b=dPQrB9KrbRyWYllh8DiQk5L/L753Q5uSoc2PmB+qZ6P0KheCgUoBeG7U
 wK8b5MngIP9R7BZBYTtF8RN5Im75AOVbuoTxmr3vRh+2CIhOPdk2xkqai
 MCHyPWBWv/1mL5gmLxg201Ome87lzdDNhJZ5h1jovAQ4w9Cl1lSY991KO
 GKv3q5lPDTK4HE2C1QFetwIRxWef27FbgdLYOLstVag9cMql1oocmwp+I
 /n3su3QV2S/VkI/inrHjhRVU8doVjYKtS+LrI/PJi1/7Of1iktdPG7/j6
 0gKfNQ5TlrRrw0StjpDGzLeGdp/x3Dcjg8C2jdLXD3SnBUmhmZxnypGhC g==;
X-CSE-ConnectionGUID: Gg2zqtWAT/2Fu2gESTpx3Q==
X-CSE-MsgGUID: rUBqm8BnT2CU5ERj4tpaVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="68211495"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="68211495"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:31 -0800
X-CSE-ConnectionGUID: 55CoAMatRceLdePj1wu+vw==
X-CSE-MsgGUID: /qgwuBDFTYu5QDow13Gxzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,168,1763452800"; d="scan'208";a="199854977"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2025 07:36:31 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:30 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 22 Dec 2025 07:36:30 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.60) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 22 Dec 2025 07:36:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c5LX48TiuWMn1Jjp3y6IT2/zfDchuPgZvXbSkTu5uXcPysSEucWiRdu1GzJge358laMRJSYWmIEPKTNMkig4vx8kxrLZBc91PPfQFambnFhwBn9fBlNufkfI23dje1bQ7DM1c3vSfKSNEuDoiLa89Q16tIBI3AJe1M86kGpkBTYV7mfBAEEt1KYTrd72ioViTI7O+SCgxHByqtknxePAQjl2ZuS9E1wWUoeG5FS1zq5uhDwB43QOjtP6bA7rUGvJdgmmWyReFDsUwvBtHRco1UezGgF+TEbPKpTrMrVMwQSWzNKhLUb+/gfB75/oiwszdFSTLmGk/thSxiHml2dkww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9WGKL8sXJ3/7rFqn77hLOkd70PbB8KVVEogMJmj0XV8=;
 b=tcRd6ohY804qp2RBxsHpI597gQMR1nTdr8bJfvcTaeNNdSrbdAnwlQB6xYv8+XDJw2EUUwBAWL/fIM7vdAS0A9+lSf9JfsoNs6+8buraxh7f5f7nKeST/0KG7pF77zUoWjYtn1WYGI96jwXVV/7YEM4JQLat63NX3OTjnOtVKCaqzAuVBzcVmE0KA5rdnDzwtrjsdGm8RsQXJC+hOwUwHoHG0EfoY8Lg8Al495UYYXx17J9nI22ZB5rvDsY3rES8DAxP32ICJJ+ZS6t2+oDu5krG7Vb3F3XYYKtOrBkJnhxaUum+2IMm/TJICS+2FqzdFDdlnqwE929rdqcRgW2dRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB6912.namprd11.prod.outlook.com (2603:10b6:303:22a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.9; Mon, 22 Dec
 2025 15:36:28 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9434.009; Mon, 22 Dec 2025
 15:36:28 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH 15/19] drm/i915/dp: Simplify computing DSC BPPs for DP-SST
Date: Mon, 22 Dec 2025 17:35:43 +0200
Message-ID: <20251222153547.713360-17-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 867a138c-e7c6-414f-8b5c-08de416fdf85
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ps6hLQJk7Cf0rPyYIKzCFGzVWbYuLRdrsVv2v6VTqCFVJu9Sj1P1KP1ucGFr?=
 =?us-ascii?Q?z1cgleopTOLPxyMV69dgnUc4O8/wloE9isLsncKvZapxhQK3Nndosh8sjTU7?=
 =?us-ascii?Q?tzgcWk9aCYFEg6czBGxGMtD3chLhMFkR5q8fzOucE/vM2LIp7GdFbuLFNk8e?=
 =?us-ascii?Q?VMR6EE18NDnqUk2Pdg5+ERB0p7peZe9SPA2UInrpp3diNOoF8B1VmaYyNvKI?=
 =?us-ascii?Q?+OJxanO+gMBUVAuKTDRLTrjhTzPv/BVQENc40Czo1ycPXZfjXfNUUH/MRmWf?=
 =?us-ascii?Q?FZwUlrlnj+gjpcXeD14+g+PMLeGf1XVKNdmvyUzG/Hh2d8BMA35gK/bHulyp?=
 =?us-ascii?Q?G11BO7x1HVLhiD3hh7V+cNWw2Vl/jyxiSQCZHCRwTNXBIqlx4C/WlDZaMdZU?=
 =?us-ascii?Q?jI5qTORMmnpqIpEY0trjLx2r+j4o/yk+oQDwHIeqakxMbOf8+o4iDhQ0fwH5?=
 =?us-ascii?Q?il+8eHN+uftJcwzBs2KJrr0uXiXf60RFi3jw5f1jxfQHXGpLNSq0Z+zhpty7?=
 =?us-ascii?Q?yARDzx5Pk7pQ8SR8Vt4XaTYkl3ZNkkzQX0WQiFgDuMNvFaYkmxh5LmKSAiC4?=
 =?us-ascii?Q?Ifhkm48+D9KxayWVA+xOnZm6zl35MxAEsdX7DreDcDwWyX0bmWnUwAfexeYv?=
 =?us-ascii?Q?wFqcsHrsTaocRIAf3u6asR284Ua9NhOkZWT7xypNQygYaUM+BK9nQ8WIoWTN?=
 =?us-ascii?Q?YS3rCWEIEo5dNZPy4MTIJJHCByTK3lITe6EtQhu6s35YMxc+rfmviklxbsVy?=
 =?us-ascii?Q?pHUP4h/jivdZww41dX7oMvlpXAbl3mE0iUeQYkv4NagIu7SNsxqPpvN51zmj?=
 =?us-ascii?Q?WWLmnt9FLTjJjlVY9vjF3QJ/xljXmgkLBIqwVH2IzsjzokmIQuLR4815KvwT?=
 =?us-ascii?Q?dxuFQLylv4BosTGXh2kFbE/iP1nIVsUixaCKw3+oq+bJGPruHFD4qzKR+HAX?=
 =?us-ascii?Q?bgPAxTT3xzNHkDIvnT8VM0MwLDtWVGE2jVYxwgkzgqkbiBaGLn6LDQaumkLR?=
 =?us-ascii?Q?2/iu3uEAod8Ld7+J9iTQR15nG4JtvMEuNf+hYqCNXjOl4Y7epzArxya9Jd0G?=
 =?us-ascii?Q?MV+M4EkAA5G/yeo1wFB7AVZlPnz5TSWuMF+/p69BmzIS2S8w6z6TPp0Ro1rm?=
 =?us-ascii?Q?f0Xr9Ul5cZV5k9UyCKwoE/0H85cNQJYOp3xmwv4xSIEMZz/5Qe2/G15PsAKV?=
 =?us-ascii?Q?LwKbMEdYf76+GQ6DhyhNQ+iszeJJQTnfVkVmz1btvPihu7tGVTT20iK6+Nnz?=
 =?us-ascii?Q?kmHNjbt4FU63vwOddG517ByOaEXS2+ENSs9dxTXXn39WD5E+lUHdLNXR728d?=
 =?us-ascii?Q?eHFvm9bHLLlHchBgI7cgXVBz3DwCvTIIdSrXhpflzXDwT/OGeD2/8E2TXs65?=
 =?us-ascii?Q?qj+Aj0taTzJ94JqtJg1KP2kA9TVENB0ogi3w5EYREiQ/mJl3gR82iwuVhfvW?=
 =?us-ascii?Q?lZtoahQgZCwCNaxFNW+klZY8TJcpjH1G?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CTJtMHEBnD9HVXsfDPvJl/ZctgAFgemVUpvwVWx3cYEh1LOer/RLvIcxv0Qb?=
 =?us-ascii?Q?f32bKuv6s3DuHo18wI0XBj34z3kjTdpaJD3L3s0BpFW9O3Qra569goQqGKYb?=
 =?us-ascii?Q?xVQLnJSNDFcPJQGq/Z5Y/tFI4wSFGJPHrnqPg1wm0T+3bp5F15bcBabTwixW?=
 =?us-ascii?Q?ahpMAtNOtqMJJU24GiGeMps52DohHH2GxwfuwymsgIFgMyunuF3WmtqZsh/J?=
 =?us-ascii?Q?5z9WD8jWxKKAcJSSTCOyoQtu8reMOIsZp4ckM8HDmiqH3t3po+86neY5Daw7?=
 =?us-ascii?Q?/idpNKpbgP6KOQyqLIjEX7S5RSX71ECx/5fwRyYuMS7hyS+UrZ+oYwoPvRQG?=
 =?us-ascii?Q?vhqUbao86aDxbMy1UqbxWKS97DHYkMWFriY92gt5RUgZJqp0E/YQjmO3Bg9r?=
 =?us-ascii?Q?hbiFEUOSIJF0+IZNcTyHWEwyqxOP+noMMsomiK0AcccPj8Na4FMwL37Yq8Rg?=
 =?us-ascii?Q?/1DFXDxNJ6EK4JD2Zyiduzku8KIZPX6zo1aCrMDV6Kgf8SYO5gwFaqrJcnm/?=
 =?us-ascii?Q?2JGD+ExU8W6JjlIKENo448wN9p7UlI6tmhBlv4o++w3kTW8FrNtI7pCIYHDh?=
 =?us-ascii?Q?y3HcnjXtBdcKkkmt7+vChhmTNlCpO5AQCW1gqgsFb7hEjOgibDOsGNWA0R8c?=
 =?us-ascii?Q?RV6iBa5kEtlvAMQhC4zaKugfMLJoO0u/LnV7nbxC31A5B+W3TnSqQ1EIbMC/?=
 =?us-ascii?Q?C6qBUWUpeW41VkHCmlXqGqIOTkmfcufcwkFOoIQSXQJwhVpC9gT4vF3SZBXz?=
 =?us-ascii?Q?bQLIQ7WRbl4MXzIER0ccNRTxZiZUjZ6K9GqLTmCfcmO+Sb0Ke9fbp3Y5skpw?=
 =?us-ascii?Q?FEkz+NudTQNxSRvuN52ugnJxv96ercDys+PmlJnUwNjwUTJn+W7tlN4hXIHt?=
 =?us-ascii?Q?8Nkiw9gYfryNXaKnmaEpJ5Oyg6uuKU7st8znSW2zcleZlzFOJKEC3tlQ8mDX?=
 =?us-ascii?Q?TMv2W8sByTTz1WfgiVVKdEVgwXw4gG3go0pGM/YSES0UqNzCZm73/uNgEe4T?=
 =?us-ascii?Q?2XLUAKpha1q5uwoMOloF5nnE4JacXRNVMc5t5BKvYNWz1i4ikil3I7DCg4pb?=
 =?us-ascii?Q?A2tNKefA/xVDHu1UceUBwE7NZodB9uzjeSWPpUkaqj6g6PLDPkzaUPAe9bQY?=
 =?us-ascii?Q?PUx959ksUY1xUblcr09PKy/g/SSYS/z/Ubt/lBZ6qRObEp87CmTUkysOTdVT?=
 =?us-ascii?Q?hkHddDtv82KOWqDnSEzd5qhTV+biy1YoRxKISclxjTDnnAk1EmP2+ljPu4s/?=
 =?us-ascii?Q?jb7BAUwYI7q+lj+C40Yq9DvXbMXncMGSJgLGX9R4Rpati1+HAGEqXchJvDyM?=
 =?us-ascii?Q?xzb4DXgnGOoo6JNPBqYiaYZx4nNF5gMeTrrbZDIOaPPAe9i6ey2/QkQxkLPH?=
 =?us-ascii?Q?suYGbZJjUqlle4J593Pv70g4lcXUAVJlSUQZz+rO8N82+CgOkpdnMGR9GLS3?=
 =?us-ascii?Q?mWUfTY3tSpxYTcnfIfY5bPRK8tfKmgrtIgDHXpNcYRKsmcdGnwZICFi62aRU?=
 =?us-ascii?Q?YmrRtnVRHuQ30rFIuvNIrCUVpurG0W/KBopIs+6lnjGare+sJ7dKzyMGBz4N?=
 =?us-ascii?Q?BWJjrH0zrTtoEoAxz2lAOh8BUT20IaT0LuhFhgltICRe2TcgtuAvJ5SI5zzI?=
 =?us-ascii?Q?GI+Qtf91IbBmG+jJBjeaUCeGE3NIN6O1yDw1ytlwNE1YSdQRU7kOGr+AFnbS?=
 =?us-ascii?Q?UoRewirUInGDLuSa44bL9cqmvdqTrUUBkac8ZdMZKS4tH07LQ6uly6y2E4o9?=
 =?us-ascii?Q?RV7v5N32oJTL/8CD/kpPuGVRYmc5198JDo85j+Lu9YEByXihSvrBzPQ/gj2e?=
X-MS-Exchange-AntiSpam-MessageData-1: K6BsYK5eneBSNw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 867a138c-e7c6-414f-8b5c-08de416fdf85
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2025 15:36:28.1913 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5SkzOW+XTj/jCddG596V00pYCYxpFUCiCef/nU27M4h+b/CWghLMK6X0pHiJLgVQCtghprn4RksxhQtDJc3nqw==
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

The maximum pipe BPP value (used as the DSC input BPP) has been aligned
already to the corresponding source/sink input BPP capabilities in
intel_dp_compute_config_limits(). So it isn't needed to perform the same
alignment again in intel_dp_dsc_compute_pipe_bpp() called later, this
function can simply use the already aligned maximum pipe BPP value, do
that.

Also, there is no point in trying pipe BPP values lower than the
maximum: this would only make dsc_compute_compressed_bpp() start with a
lower _compressed_ BPP value, but this lower compressed BPP value has
been tried already when dsc_compute_compressed_bpp() was called with the
higher pipe BPP value (i.e. the first dsc_compute_compressed_bpp() call
tries already all the possible compressed BPP values which are all below
the pipe BPP value passed to it). Simplify the function accordingly
trying only the maximum pipe BPP value.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 29 +++++++------------------
 1 file changed, 8 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e38e307bddfff..4603745dee379 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2295,11 +2295,8 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 struct drm_connector_state *conn_state,
 					 const struct link_config_limits *limits)
 {
-	const struct intel_connector *connector =
-		to_intel_connector(conn_state->connector);
-	u8 dsc_bpc[3] = {};
 	int forced_bpp, pipe_bpp;
-	int num_bpc, i, ret;
+	int ret;
 
 	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
 
@@ -2312,25 +2309,15 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 		}
 	}
 
-	/*
-	 * Get the maximum DSC bpc that will be supported by any valid
-	 * link configuration and compressed bpp.
-	 */
-	num_bpc = drm_dp_dsc_sink_supported_input_bpcs(connector->dp.dsc_dpcd, dsc_bpc);
-	for (i = 0; i < num_bpc; i++) {
-		pipe_bpp = dsc_bpc[i] * 3;
-		if (pipe_bpp < limits->pipe.min_bpp || pipe_bpp > limits->pipe.max_bpp)
-			continue;
+	pipe_bpp = limits->pipe.max_bpp;
+	ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
+					 limits, pipe_bpp);
+	if (ret)
+		return -EINVAL;
 
-		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
-						 limits, pipe_bpp);
-		if (ret == 0) {
-			pipe_config->pipe_bpp = pipe_bpp;
-			return 0;
-		}
-	}
+	pipe_config->pipe_bpp = pipe_bpp;
 
-	return -EINVAL;
+	return 0;
 }
 
 static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
-- 
2.49.1

