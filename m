Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E13C8FC59
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0B6E10E852;
	Thu, 27 Nov 2025 17:51:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0+EbyKU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F9410E852;
 Thu, 27 Nov 2025 17:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265874; x=1795801874;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=6gttgYKFCC2DBTFsc942+coCgJxSewZ5OAtr3/u5i5k=;
 b=K0+EbyKU1oFztI2zGIgwsfmy0+Up3DABpHSakpooc6JQwv3YiFf0Lzq+
 IqaThNzf+aA8CgrToSJohxNL0LBnaw0OBZckzu7xMvuCNAtoZk1DoHZLo
 aGmlh2SZpkonJoZQQ8NY8SM53ewnqCgG/e6tJYUOZb1DfX36hehuZmtSh
 M9KW135C0V1I13LuxPlUaH0Grar82Sq6tEjJgqVSVwVQG8vTOaW8HujkV
 mgx4py3avpWdzp76LmvNiB12lAGkEYwF5YM5Yuh4s4E2C217Gokb5qb+R
 t5Yb+TsXtz57HW3JrBnCJj6pgVhSANTUGBducFz+Xl8bCE2BGuEUgmPIm g==;
X-CSE-ConnectionGUID: u/ZS5+1dTLiGTjxtD+QtJw==
X-CSE-MsgGUID: yNELt7BWR9OFLLlkg2ozCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="70174598"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="70174598"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:14 -0800
X-CSE-ConnectionGUID: amSqV+sIROewoQ09OL6P3A==
X-CSE-MsgGUID: 3bI9TBTsS0CS9P1uOEColA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="192409325"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:14 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:13 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:13 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f41z25CYKR8Loj3zhQqPn+s+44jQp1bb3BQHHbpEgL+T87ApN2D6c2TW+9CnZFt6B+8TTty5eboMpzo52nh0O5BERHL71IkCjyZ4A2bjaCa2Ew/jHkmkBjDRVNShlzd3Koveed+13rH2zRqCHQnBUJ5HvKFjZYRjTKsRP7/kih187tTHMSy1+/Om9QBMx2UsyUlaVMz0tH2L2MBeWoP3+ShFk5NvRM1mb5P0ok0s58Wlwb0vGXIiqQby9OEErJGa/vme/4hKdW1w3wVQvjKYXA8Yb67MOvlfoZMGrzX0LLSNl0OqYnp0aKXsRiNLnOJY17wWC9S5YDPgaMzIjO9/nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DYGmN8+v1H2bCotekYtPCRhWOqqdKEccO7rbxxQUPVo=;
 b=ebZSFWINxfVWJflaTSBrAgy1/xxWWablhR2G9F9fplQkbtCRGfgA7Mvn0SHxwvRxSzn3FzGBdd7EctUZUyDJLYE9gJRVW8sbyMNmEvSFb96VFDnIe4qJhsK282IV0CvN/f0GYIOSIL6dgpDmWznLCbpuIdZ+D6iwHdl82sGnIcU+c7vSo00rBmOMTo2pA5+iikMuMXrJDAfFPAOYTpN9Wi6+3ncD2y2evXwYhww194mWCtjcLVhDR3w7omQ8pcoHTOD6T1m1+IzOw/IDLRiw6x/SVPvKmkqA+40APJV3GhMLvNCIL1M8ElDk2CnKEZo5Z72DxW8/+s5zHqhvHhOLrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:03 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:03 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 11/50] drm/i915/dp: Account with DSC BW overhead for
 compressed DP-SST stream BW
Date: Thu, 27 Nov 2025 19:49:44 +0200
Message-ID: <20251127175023.1522538-12-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 581b30ba-db58-4384-076b-08de2ddd888f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?G2plyW0xVEULMwsJ8UcSa3e0KkTBUROmithNdmSM7qCV0vSjSzWHQki58KZ6?=
 =?us-ascii?Q?keI5dxo770TIpWXoRhbfv8hv6eWekcL9JNQzAbCtQU1SykRZDDlw/L/5Wae0?=
 =?us-ascii?Q?AxUAZYmHxJTqTSBDdAnlvZXBmKcXxAit233APwjjozS/Dh4kXjUNLKCvfc2x?=
 =?us-ascii?Q?cPdqFQgeq6Hw7D9IBgHOSLnTSV1rIFZQHsjdEfKGzICsuokZERk0jhVwJ3Ly?=
 =?us-ascii?Q?hW3xHTRhTTN9XGygWfyst11FW8Q+tVtwnFcaEe7RCYhCNtg0e91AzjNAMwpb?=
 =?us-ascii?Q?UK6/92DVdAm5iwOxVUribzULMjJfx1MSPoHKbcZrrNyJxJ7VtIAeCYKKwS4O?=
 =?us-ascii?Q?Xx1iImPSyEs0SybSFXZBxnBGIO4T0HLotqagvgA7o8NBGLCESxCn3EkkYhIW?=
 =?us-ascii?Q?zhP+lqITb7QGFguTlmBPIAIX3DwRyW37n6pYeIvkPl04qQ1SzQIpGMXREeRL?=
 =?us-ascii?Q?PSemD3GtwwEHxr6EPvCdvpv2ckaX1taj59p7IpZM9k5kOFCcBJR2B1OlkItB?=
 =?us-ascii?Q?gUzkzxmAhIH9shBpE3XlU00YrN7dMj4BLk2GB0RYMvFh0lPh5Nd+kv8lpi2X?=
 =?us-ascii?Q?zEEJukBlnyVNIw8m49FP4oO8jnBe+H+GsU+AyLa0jX/eT6vgsfLP9fdcfJHO?=
 =?us-ascii?Q?smLfZUJXf3zYQkaij1DqgDxPd4drL7197PWru2h06o1U0DFYGJlZXHSi1sJ9?=
 =?us-ascii?Q?AkgevL7MrMqQNavAUqDMfn8mInSVbC54qZdhVBTDSFVIFzZzZTS51MvQ/ewt?=
 =?us-ascii?Q?K12uFnkhxht19UjiKrFfSLUp6F6Pzrs6kkcVsDB9mqLOL9BfOF+vatTNW7gZ?=
 =?us-ascii?Q?qlR/OJT6aZKLDiJCe29mcE8W042SedGV2Xfka3QyK3nc43s/WIR+eboBvFx2?=
 =?us-ascii?Q?v/2oQPZgaLU0SaRl8/VEiKg/daNSiH9O2IBwe4Rt9DNxE9GXKLqQXjw6PZrx?=
 =?us-ascii?Q?RnAW7FB2VQ4XnBfWkT4XAUIuhyf8j2Usmv4OvKFJ37gQ3cgy3NpwpxKdJziA?=
 =?us-ascii?Q?vB6GWEIHlapbH/mbjyT/5MHnjL+HHWJGHVkMEukukVyiWn/Xp5G3YD6xfFI1?=
 =?us-ascii?Q?AI+ZFhgJAVOehaDRFZFeLvljXrPpSy6jg0FjhRqbft81w532+fVvYWZspKZ+?=
 =?us-ascii?Q?VqpqgAh9rNJf8suArBjb9NCBkZDm1YXKbLlXylaJ2x6g3WnWk+B293M5Ps4Z?=
 =?us-ascii?Q?OPNXpicSGYSUUqQmicVZVy61rDqDfcVPZf6i1AZ7F6oyz9TRKa12xB/y8H8q?=
 =?us-ascii?Q?OWm/N93fbHGAJKGhk0pftjriMTfCs0CNNIU4QxVzIkWC+jTcQ0MNWa1cHs75?=
 =?us-ascii?Q?llu7rdPUJ3Co9Nk/eDvcLBrgRei0+gs8xo4jLwFgn/9uwyylk9wUnG+qhXFX?=
 =?us-ascii?Q?Oaz+3YcTYMX9DigG0i1Ef1CV2X9RH6YFIcB1Dh608HGSWM113FpUhtq51ndq?=
 =?us-ascii?Q?W31jizq2zzGzqvyxXtQxDXCPY+o2+2Bh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JcHpBSOW9YF7dRGj+iZRG6vUsrDVpVLlEZuKd1Tnnl9Nop7dilaFIprGAlkl?=
 =?us-ascii?Q?lZOG0RBDom1IZNq7etx15Achbulh1zY0foHq0V2bFp0U0f3ZDXDteEJx46Mu?=
 =?us-ascii?Q?zUHIjMlmc8uYUYHYGSpsiJ7d4RQr7MQsY4eMDjXksOXUi//2E5goWC+KNXiJ?=
 =?us-ascii?Q?dlvgM+t7VxtnGUD2nQR6SnAp6KhzLpaxgzR99T+meUdgBQjNlJgnsO4R3XRr?=
 =?us-ascii?Q?8dloWygEPY374ILmm87fvgHK8tvJ/+9VtvaTIaVsVAkpRCWB0wXDr17kd0KT?=
 =?us-ascii?Q?FoRpvULQKJFFU1HdbydHnp6T0RXE1nw9OnnCDqgxIBhzLsNRnDoMs+dpVOqR?=
 =?us-ascii?Q?Hx1vz/9PxklePd6OvTvqnP6mEOFh89zhoCUk3xIAKZCjGdg+DDqtS8nHj+y8?=
 =?us-ascii?Q?QfucDbibrPfuiP0tdOSmt/hMhSwK+H/J5OfrZT/Iuair+Z5SOBAHwesGtLha?=
 =?us-ascii?Q?wtqCEW+huFeibW++I1PbgeecKitTpGU0dcO3IrzKdmXqAQm80T4sEapo78Ka?=
 =?us-ascii?Q?ppH4S7XvIztNztAEEX3Ct8dCB0J91xCamjcDGdZZ95Uwz931xXccU3jk2h6f?=
 =?us-ascii?Q?v1zHSevsII4h0Fdfsvp6Rd8ZdvdU51wxqrTHo0GWIrhrRlEdq3inMuYsMjSS?=
 =?us-ascii?Q?VdwwfeVUGPkQimnvrYRJwHc6h8k0VwObOI8exdQkZM7ataapF0GaYIv0fsyx?=
 =?us-ascii?Q?driINunhZKCsF60ieOdihebcG+AzuQH9t9iARQNC+dfrqfT2fgyewHNt2LhP?=
 =?us-ascii?Q?ByM/VkIYyJJsHt1J0b9ZcOGnab5K2h3wN7O3i9jc/6ElgBcIVuo3Om606tY5?=
 =?us-ascii?Q?Gau9Rf4XUHdZi/WsxW5WYUSuF+6Em5i0Qt3re9vhhsVhbOUJqs3z8z45g+2/?=
 =?us-ascii?Q?nKRHN7TnS+YQ+pO22M9HOWi0dEpOfKgruIJ2BlVZvJOOmNAPYbDfw6SHo03p?=
 =?us-ascii?Q?esk0xHGfLCbpWopB8Yy6pFHbDs74qPyAIWsDLWoyzg4WF2OBTMPZP0c9qXSb?=
 =?us-ascii?Q?JP3nGJCALn3x/+BVB7gBDvG/gb4BLzYZDmbPAsIHuLdkktC9tA7hPW93fijO?=
 =?us-ascii?Q?eXAMKXbFExxdDL+EnlCtcQXv1BNj/ODL+6ldF/EC6bJP0knOZb6g13zcKqYz?=
 =?us-ascii?Q?PlmmHNYo4Zc2PsMyL+8zth2Cmj3Aq5zCIoqyteW61Cb27s/HIbRIr6rVqj8r?=
 =?us-ascii?Q?0vsBHCxQLjFKXWSXSK/kv8BjafIwucDV+UagQ/tlUF3So9NHYaBiGsz+IkjK?=
 =?us-ascii?Q?ilUPjU/LgoXZNE3MzgXggOI0PupJ2eQ1pE+uh92i7fDaYLu8RTcUtwZ/3seR?=
 =?us-ascii?Q?z/UHTWlBJ0oMhE7roQ+/QYPE5RubpyWn5PWEoStLSnNKX6LJCx+Zf9X2aI/Z?=
 =?us-ascii?Q?qhTE4jnQ05VzTNWzI9GxA+j4wuydbERxNC5TkgMt+Oge8ZyO03bn0t17JJYe?=
 =?us-ascii?Q?6uIbSBdQg9jEtMdSPkX/Gx/i+zKhaW76sDKWaErEKvLuegXhHxqwOc79xdHk?=
 =?us-ascii?Q?/smIcQ40GGhlaw6i6HcxjR37/emxi0PjxCbacNGl56BiF6EuHtVQIvE1Q30Y?=
 =?us-ascii?Q?dXkrBxmXpqIbv4ek55TFMB0ffZjqXa7j9OLT81RN+3wqFG2NBfotGxd/blTE?=
 =?us-ascii?Q?UaKSgu0Gg5EwF1eIKo1vDsvZoZ0TCofc8q99B/2XHfv5?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 581b30ba-db58-4384-076b-08de2ddd888f
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:03.6528 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eAoj8c/pQ/qBsHj6rvnvlwzKpDyNUECOvgg4vMqjksq2sTGYuvf47xqTmRj/m4gwEyGc0a3gi5RUDODHOWqWUA==
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

A DSC compressed stream requires FEC (except for eDP), which has a BW
overhead on non-UHBR links that must be accounted for explicitly. Do
that during computing the required BW.

Note that the overhead doesn't need to be accounted for on UHBR links
where FEC is always enabled and so the corresponding overhead is part of
the channel coding efficiency instead (i.e. the overhead is part of the
available vs. the required BW).

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4044bdbceaef5..55be648283b19 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2085,12 +2085,16 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				if (ret)
 					continue;
 			} else {
+				unsigned long bw_overhead_flags =
+					pipe_config->fec_enable ? DRM_DP_BW_OVERHEAD_FEC : 0;
+
 				if (!is_bw_sufficient_for_dsc_config(intel_dp,
 								     link_rate, lane_count,
 								     adjusted_mode->crtc_clock,
 								     adjusted_mode->hdisplay,
 								     pipe_config->dsc.slice_count,
-								     dsc_bpp_x16, 0))
+								     dsc_bpp_x16,
+								     bw_overhead_flags))
 					continue;
 			}
 
-- 
2.49.1

