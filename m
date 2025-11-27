Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C12AC8FCC2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67C0B10E8BB;
	Thu, 27 Nov 2025 17:52:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LPggTWgF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6717210E8A3;
 Thu, 27 Nov 2025 17:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265926; x=1795801926;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=/f9IHh1SlkCV8E5Vfen03CWGrpSQ2A85U1oLdIu2zzc=;
 b=LPggTWgFFa5zrYL3q8ugL/1KRWNawTdzU9AFQ/T6kgaPjayfBmurYAAs
 l3/yYIA/KSTTKH1LmuQp5pr81gBH7bj1B0TLQt3Xh73tPQ35cvVjvG8vZ
 Qm/oB//8KUjxgnm/+keovHefGJ4XKLxV+xnZiOor8N1U6IcN1xuBiHcyv
 7SrDK+Y5lSNQ28Yz7UaaF+eYkF3g1SamOwB+zcSE7EOs+zS56zbV/cfjM
 Bv+w3Ph6P82ILmNN5rxBpSe9VZct55FfZyAuEljg2eAUIfmow56wSqyK1
 eqSOlYTG/g9TvtX3XoaTxToA9jG85Dy99DiR2ve56vBKtlpI8vq4tomBD w==;
X-CSE-ConnectionGUID: PsPwiUmmQSW37qniCr4PiA==
X-CSE-MsgGUID: dCGrAOayT9eZnmI48iYTmw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66276800"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66276800"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:06 -0800
X-CSE-ConnectionGUID: yRp2QKByQo+pQyXzQoJc2w==
X-CSE-MsgGUID: LiifauocReKjJF1ivBiskw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="230562130"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:06 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:05 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:05 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gjgm2BhwPN5aW7vkS2x5j6yFo8Od99rP4PecSK0xJV8/I2TtJTxKIXrqUfyKysiBknFnIkKaEd73ADPKxOVy686a+foPwjZAIxXMCkY1giQVP8yUHnE/tsvS7hR3gyO+VCl/eh8ce/A0AmbGQzvItV6GPmDKNuHc5KEyKM/gNivuTB/GSv3PwTYVPzJedyWf/wgjstLSNvO0Ocx3Mcisi0Uzh6YCx14o+oJIvf0cpIJjlaecOApSmcTrrw3U+D5nPvWaBFxKmgrykPsbjjBjxjyUfvYE7df6Qbw6azuq4EHjkYSqlLIpAlaTnZVDm6celTa40cNFH/nTLFln3AXo1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rnF+Awg2NnUb3DwgY0+rETAfeDYIX+yI1u+buI+trqU=;
 b=s9KifavZEuh9WvdXHcOs8+v1lj+7aj4D4mYL1wgOysFOfd9wEJG3LUlXv5eBOV81Q+4q6g1+Jux7pppsCwrs/g2SHGyjySuCv63/9/av8+lykOlKRKCaTk54b5Jh93YJVQMgDQy7a63Ks3LuCUmAAIY4aT4yGP2l0FMA0gCGerid+GCnUWCM+qA68KTR86efM4q9HEuQVIE8JEO4fZ3LlcpUD29ggAT8vCY5UqyASLkR2WPokfQ6FlKAGzIJR82JoqMrEjkZe+olbnR74Wr/YMXG2sGSBkw2q5ui4UDeOCf4Z9HxZ/f5q1T6m1zhXkswqKVWxeekEAaYWuVL3xWWLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:52:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:52:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 41/50] drm/i915/dsc: Switch to using
 intel_dsc_line_slice_count()
Date: Thu, 27 Nov 2025 19:50:14 +0200
Message-ID: <20251127175023.1522538-42-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: d7361d4a-13d5-4971-fe9e-08de2ddd9f44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Sm4QHpUugpKDpe+HiSjTaTtllaiOhFibSUzG3xes35glw9Oc9l9cee1ld2n1?=
 =?us-ascii?Q?e5vYE0aRQEgsCDNbjlYVHUdgsjdYyWtZTtrB0obJzTNeTBTYAa1I0XtIKNlK?=
 =?us-ascii?Q?tZDQSDeDxUHrdJMRhm37NX8/HKmcoT5zURzvHTtIkMQaDqVTnL4oLiaey6vl?=
 =?us-ascii?Q?EYAhvGoFByD11CbaVhP0+52DdII6W2HLZPm5fyiOjZW8qnb/jfwUZo/6zF+m?=
 =?us-ascii?Q?SkDCTaOPI5hnZ9dxtFi+1ks7uDEXTqan7rJNg8bjw6fIvOAj8V6caaxenlBC?=
 =?us-ascii?Q?KK1c92rWF9R7BQF2Kv5nZAI8ZDOnsf23uii3xaDD2v8cRYqavA1cy1fO6eXv?=
 =?us-ascii?Q?5nIXCt5/Gceji90kZwsr4eUV8y1N2BeAOPTRxqlWjPac+4FjNgnaVZLu2u/Q?=
 =?us-ascii?Q?EEPNlFUGf3wMHDTz8vtJX2aUZ4TQzARTE50mNiVarDnyNTMXunrGQfZFieA0?=
 =?us-ascii?Q?q3Hk+8ea3WX+6R3BBUDV9Kdgq6L82EVt38L/hUfemmKlvDIEzy1lAnxRcqT6?=
 =?us-ascii?Q?urxJ7mxqASPbghOloOT9EenQRuqfivXYlTPkj+Uc02iGdxShWy6l+3+ZkEOa?=
 =?us-ascii?Q?LB5ZJccjmnmHVI7tzc+d/Ddnj18nHrWd7nHsSmLGqdwdeu90N/IiL1w0tWot?=
 =?us-ascii?Q?PDp6jFWfRmepsi4VeKYmIqKOSpz5apYg/Hptj9tz2MJJd13xe78jSs2yiO8+?=
 =?us-ascii?Q?X7VKmkB13KVDO2BRpmOqBsKwZ3Nfx2S9/JyRHdMoCFuB8umcTmtjuKyXmEeV?=
 =?us-ascii?Q?2lNJrDdNdQtQqf16uZ22pFv8L7MpZjd3BAV4weWbxbAn5xYtHyOTSsEP2wYl?=
 =?us-ascii?Q?iokeXdSvKxMGyYw8ljSiYxnh/GrP8+vVRLkNE1V+NdDeVXzEuK/iqU9/e3uq?=
 =?us-ascii?Q?SyGg9wLrMjll64tGLDOju31CID+FoYh6ArP7bsFWxSOWhCxxqxvoMMT2jRdv?=
 =?us-ascii?Q?QK1hHPEyJapdp9YlTMe99Q83pp+V0AejMMrilVjlUeDo6koWEJ0oWghwIUmA?=
 =?us-ascii?Q?Rv5peKi6LLGi30ZXHw3FWL+2CNgoJYylrFpg6lm8dPS/0hlOwLlbU29GDT9t?=
 =?us-ascii?Q?OaUiftVkbE3W/NvH9LV1eqsC3HP611XARkJLIZyWotjg/Jj8fQKsHhalaWzB?=
 =?us-ascii?Q?Amqv1H1yNBEh/HZE2/VR4RJ317GAogBZ8yWcS2xIVfTw3vETPGzfpLA1ot6Z?=
 =?us-ascii?Q?T8GluV5nhoxkgAugs/bJPj6MUVQ0bB7lxphExyYN3xuIVqGzI5GkBKP29bwr?=
 =?us-ascii?Q?YhmLIW4yIvSgTks5zhrn+0ncuU6Z+A6OGoVkUAfvdtF8AM5fXLu1lqoteVCH?=
 =?us-ascii?Q?XgSH7eqNnCRv3Dy6neeCdk/x8Dz+pucKpz8ei+T8PqfXGmiICwAP7W93D6QI?=
 =?us-ascii?Q?xA1+uS6sO82YmP7UTkp6j+xysXJKFDm6bMf5LGTHITJg5ykXmhz+T6yBwex4?=
 =?us-ascii?Q?r0emQVZgxolHbufthW1O3uc31f+WAg9C?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yPULoUoccXzXRkTKuGdyFZA5v84wx9nsU7EzB2plpM6S+XtS/yr6oXH7ZoYt?=
 =?us-ascii?Q?+SHTdhkNz9XF5bLUh2XLhoTm9nsyDQDFmwv6mRAvCz6K0IK3heHbEeEiFUL7?=
 =?us-ascii?Q?qkRq/I6q3i2EYmQR0B6Co/cMsQr13ev6Y2cZcBuYwjJFO15vR0J2CRhSIJxy?=
 =?us-ascii?Q?cTu7QA2AA5wAzp+2oUf9mcDEzpr1N23T5eLcauMHdZNom7tkKH8MlTk6jntM?=
 =?us-ascii?Q?ASX3w+F9vKS0SX7bnK4RkzRKiTvy3mNw2QELbimJfswpKyphDnsrREBNjROw?=
 =?us-ascii?Q?ceWMp3jc7UFYdknf/xHVLHqv4UfQUzaN0Upxcz4dGCUWCXRIIBGM3MtKD0p5?=
 =?us-ascii?Q?hwSVS/uBn5/iFvMVU0Q89OJrD6BcbNhT3s8jHQ3/KBz6tDbjRazKSc10sUoU?=
 =?us-ascii?Q?XLAJChABjP41zcXQjntZoep1u1DxH6BPMbLYo3Eslu48tUSSDfhJXws9Qftf?=
 =?us-ascii?Q?UeIwoxy29Q9gFsRA9lNJKg/9aJx+K442STvEW5ybYCrvDzPEWoFdQBducYbg?=
 =?us-ascii?Q?1NGljYBI6whA39dEUear8kcz1zFzMR/Hpbmxt+j6ji0zKvbIRYwJMG2RI58r?=
 =?us-ascii?Q?MXLj7fm6PGnFu01blIBsG0DWJFFa6jvrOiqJwdzAkaf5CixHNGTbWkG1du9v?=
 =?us-ascii?Q?dTmRIfkO4pl3r25HMGVP0gux5sORMbh0OmmTqpwUt/fC2sApmHzEIe6GeNxn?=
 =?us-ascii?Q?m5+eHdDjvL3TRArLs4pfjVPlp+9uOVrQQVC7ct8mU+yN1G8Jri8HKEU15Ft0?=
 =?us-ascii?Q?Crnio9ZfgK2ANPaYXGEImYTgzxkYGOu+NjAkewccndbTdcSCeq6oF+uTwg93?=
 =?us-ascii?Q?4j/G+vylxq05wVJPc3nNhBf6w/mthAyaL8PbdGxYXz3nk/3gvUfp5sXNKJ2Z?=
 =?us-ascii?Q?6pgwwPlWMdD6RBikMBZXy6L1fEkTxsIlYJVMbP3kM79AUF9ZHg8xuiV2k+zy?=
 =?us-ascii?Q?kvfClevFr8sO9Rx9xPBx86+1yYLZITRscl3akNAFsZ41DD24XKttG24FtUO5?=
 =?us-ascii?Q?m/rt5WrYgbcIcn9uXTaQVtmnZQfGf9IkllkxGy9udEl3+cHo6I6A8JO5cxpF?=
 =?us-ascii?Q?rKbGVvcMMbw1YwAnVdbzapVxaTs6fOIZqxqIPNrHJSV5xKhuprLfg2kffEST?=
 =?us-ascii?Q?r267T//qIYqDixTzfyGJzy58gRwv1KVNdgavuCx5mi8jjXDZdjFGOiyrWXA+?=
 =?us-ascii?Q?+pp6WUuSQWh2j7H0FLpq8r2gvGNOdyM9aVMd6BBzRcUvN44hiR7e7Bn1dTyr?=
 =?us-ascii?Q?o/4FUMZRygBihllpGomBWMBoMesfKPo/ZOSSxDNIpqTaOmdM6ZRyU/NXlH11?=
 =?us-ascii?Q?RyZ+dywrbFVkGGqQNWQJN8pFrf3jtrn/8eVlN3J5nj5JyRtUJoz/Sw9SPFx4?=
 =?us-ascii?Q?zWDHPS//ctTZKuEiGynD8kqzVlkhp1gkYLCSBp+lU7gmYIGKHBv9V/Ox/wf/?=
 =?us-ascii?Q?G6nHObqafZB6GF7RHOhRx/6z+foS54rk9C5jx7YKaYbDZqFmmkBU4I/w6l/3?=
 =?us-ascii?Q?a14QEwClLaXKFdzejaaKXQxOZwwx7dg1HrhheU2qAMqqeadM6AIzpu2uLXBH?=
 =?us-ascii?Q?bkrot75w67LVqjsztK2eOAIsntECNXXRTN/+YI1xv85mZiYE96KkvvleneUw?=
 =?us-ascii?Q?DFZaAQZ77hVh74FatCTsEKT6qGlh9CTFoU5XWfXFGj6b?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7361d4a-13d5-4971-fe9e-08de2ddd9f44
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:41.7839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: egLCvca4th/+lVbu0FMzZ4C+EZB4GwTa7rL6HrsDXGrvFfU1of1bUxsRyGNyUOY+3WZ6+dFrhCrVrFrg5+yybg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

By now all the places are updated to track the DSC slice configuration
in intel_crtc_state::dsc.slice_config, so calculate the slices-per-line
value using that config, instead of using
intel_crtc_state::dsc.slice_count caching the same value and remove
the cached slice_count.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c          |  6 ++----
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 -
 drivers/gpu/drm/i915/display/intel_dp.c            | 11 +++++------
 drivers/gpu/drm/i915/display/intel_vdsc.c          |  7 ++++---
 4 files changed, 11 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 479c5f0158800..698e569a48e61 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3538,14 +3538,12 @@ static void fill_dsc(struct intel_crtc_state *crtc_state,
 		crtc_state->dsc.slice_config.slices_per_stream = 1;
 	}
 
-	crtc_state->dsc.slice_count = intel_dsc_line_slice_count(&crtc_state->dsc.slice_config);
-
 	if (crtc_state->hw.adjusted_mode.crtc_hdisplay %
-	    crtc_state->dsc.slice_count != 0)
+	    intel_dsc_line_slice_count(&crtc_state->dsc.slice_config) != 0)
 		drm_dbg_kms(display->drm,
 			    "VBT: DSC hdisplay %d not divisible by slice count %d\n",
 			    crtc_state->hw.adjusted_mode.crtc_hdisplay,
-			    crtc_state->dsc.slice_count);
+			    intel_dsc_line_slice_count(&crtc_state->dsc.slice_config));
 
 	/*
 	 * The VBT rc_buffer_block_size and rc_buffer_size definitions
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 574fc7ff33c97..0f56be61f081b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1312,7 +1312,6 @@ struct intel_crtc_state {
 		} slice_config;
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
 		u16 compressed_bpp_x16;
-		u8 slice_count;
 		struct drm_dsc_config config;
 	} dsc;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d17afc18fcfa7..126048c5233c4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2031,12 +2031,14 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 			} else {
 				unsigned long bw_overhead_flags =
 					pipe_config->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
+				int line_slice_count =
+					intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
 
 				if (!is_bw_sufficient_for_dsc_config(intel_dp,
 								     link_rate, lane_count,
 								     adjusted_mode->crtc_clock,
 								     adjusted_mode->hdisplay,
-								     pipe_config->dsc.slice_count,
+								     line_slice_count,
 								     dsc_bpp_x16,
 								     bw_overhead_flags))
 					continue;
@@ -2427,11 +2429,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		pipe_config->dsc.slice_config.pipes_per_line /
 		pipe_config->dsc.slice_config.streams_per_pipe;
 
-	pipe_config->dsc.slice_count =
-		intel_dsc_line_slice_count(&pipe_config->dsc.slice_config);
-
 	drm_WARN_ON(display->drm,
-		    pipe_config->dsc.slice_count != slices_per_line);
+		    intel_dsc_line_slice_count(&pipe_config->dsc.slice_config) != slices_per_line);
 
 	ret = intel_dp_dsc_compute_params(connector, pipe_config);
 	if (ret < 0) {
@@ -2449,7 +2448,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 		    "Compressed Bpp = " FXP_Q4_FMT " Slice Count = %d\n",
 		    pipe_config->pipe_bpp,
 		    FXP_Q4_ARGS(pipe_config->dsc.compressed_bpp_x16),
-		    pipe_config->dsc.slice_count);
+		    intel_dsc_line_slice_count(&pipe_config->dsc.slice_config));
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 2b27671f97b32..190ce567bc7fa 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -283,8 +283,9 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
 	int ret;
 
 	vdsc_cfg->pic_width = pipe_config->hw.adjusted_mode.crtc_hdisplay;
-	vdsc_cfg->slice_width = DIV_ROUND_UP(vdsc_cfg->pic_width,
-					     pipe_config->dsc.slice_count);
+	vdsc_cfg->slice_width =
+		DIV_ROUND_UP(vdsc_cfg->pic_width,
+			     intel_dsc_line_slice_count(&pipe_config->dsc.slice_config));
 
 	err = intel_dsc_slice_dimensions_valid(pipe_config, vdsc_cfg);
 
@@ -1042,7 +1043,7 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
 	drm_printf_indent(p, indent,
 			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, num_streams: %d\n",
 			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
-			  crtc_state->dsc.slice_count,
+			  intel_dsc_line_slice_count(&crtc_state->dsc.slice_config),
 			  crtc_state->dsc.slice_config.streams_per_pipe);
 }
 
-- 
2.49.1

