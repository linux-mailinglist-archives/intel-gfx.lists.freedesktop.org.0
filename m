Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC6DC8FC7A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1981E10E87A;
	Thu, 27 Nov 2025 17:51:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gMKr8hvh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2D010E852;
 Thu, 27 Nov 2025 17:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265875; x=1795801875;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=CjIJe8Jlu8eyvtLtRvIkJ3YVBObs46evr28wc6xRoHM=;
 b=gMKr8hvhwK7USZpRBrdyR6csc9K/KWp0UMWXEDqTEWQdxSs7eU1TuBqZ
 w0onN89078uk2dtOoTaEN7XhChYvrvOkSu6HPYdCAOtDG7ttvYu7sGddn
 uiEyKqjI26stgKIT044HExPauoxcErE2jYLzqeEdjLU0oZmzKAajSiXfZ
 R3SWlvEeTHW6KbmtGR3mY+hwfW1DqgFj2BuVHrmPo9xiYLI76UjEuRdQc
 YmEQm5W0oxXJo4dp1ljXG/LjEANyzszip/zMEWbWHLZXMdpGXi54WmtHO
 mlfjwhl0GHCiTfsiyX3d3gw9Gpff1gHKjgVn5MsOapuaq6o7xUtmI3Ebc w==;
X-CSE-ConnectionGUID: fVEbmwnsS2CYn29lnMB92w==
X-CSE-MsgGUID: +nKCOqjwTLOZB3VrXWROvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66203959"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66203959"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:15 -0800
X-CSE-ConnectionGUID: 9ZeoVoJCR22L/BBwDBQZWA==
X-CSE-MsgGUID: xbjGJSJNTpqOGKoYnxQoAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="198230157"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:14 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:12 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:12 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CyZ3dW87ur2djXofanw3B5aKn77sru2AADM02s8Kf+SbBka9KezFf7+STGLmYYnkDs0qTHLQWiuWvX2zgJW05APh3VcZlm/kTNoPBCa6KNq1oqYOLgNZeFl0Yij960l6CQBKqXvMLfT6cLeTwIwBKgX0aYpOAAIf6B/gXK2eRBHVICGQZr4dAWVet3dhDm3CM1ukDSMuK9gTEUcvnvkTnMpz5kYomgBak6RSZQvrZyTVJRR/Uz5Wez/9XAL/YELkIoNh0OJb138X7keiNyxGdVWsR/EijeBz3IVi9xBp67P5wxHmtjrEKEYFfartN5vo1Tw5z2aG/Irtt3q6pK57VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=soa8ObA8SSqu2Z2ZUDcbZNX/QXrR5dxMbjH/4BUvvfk=;
 b=nmPjuY4PBpU3ex0/PL/qaS5IX4MvnfydW5EeDbJWSszqzqeAG0SMxgnhmGGs/3zwPSOaiva+cq8dkhO9kyQA8NHPRD0oG/vGL304qTVBL1dgU89RM6544DMZV3Tw1POVLP1J/N9qFGyEwYeKGj4yZR1kVNtLRbUScpXjARCfSISrne1plCA/N44ZRiNSI/2FXZRk1/vIOHdn0tWXSzCqIxZJbS+zVBdgHPwz1AD6uEWc1aOAuaQw1sJwajPsbAd40o1y/vydE92pgf5uFVNwS4SlgKgVqmCooZdHYwah/znkwP1jvQ5vUrGjV0fdnsvtJQibkIKED17rs08sCeiVHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:02 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 10/50] drm/i915/dp: Account with MST,
 SSC BW overhead for uncompressed DP-MST stream BW
Date: Thu, 27 Nov 2025 19:49:43 +0200
Message-ID: <20251127175023.1522538-11-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 2627dd03-1857-4720-0466-08de2ddd87b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ni9KRySrE19uLIt9mrZk/c5aMrgwM5O0ByjGPJxKA7CiJhz83aEwW3BnXr1P?=
 =?us-ascii?Q?QTMC8hIY13NBEpsbFLr6XQmfqKq+A7E1bYLb2Op/TTB2tDcYSPXzBPDT/7aR?=
 =?us-ascii?Q?2o/DsC+VHPBymsQlIJVTmaNa+lp/q5m1cX1IyuyDIxl/uDB94xJB26/2fmKd?=
 =?us-ascii?Q?dKSOtLZNQ9uOEnN17BmfVd6OEzcuJ7oSxzXO3OYr9wGQlXMGp801BkR2UpQo?=
 =?us-ascii?Q?dq5HtMw8hrzJZdY0gvqaVUbC0C1u057I+Jz7COkMhK/Oe6iCYPj27L/fdSUe?=
 =?us-ascii?Q?8gRX5r0j65g4+t6+ThWA29d3TE8NK/ATXRZlNvRzJvucvqUFVvOGmUzcKAEI?=
 =?us-ascii?Q?BsKuFoRzZ+tq2TcHp/hgeOvTRYe5qDPN/QXmayaC+cfEBvKSMQp4iQgvab5C?=
 =?us-ascii?Q?m68U7lJDfAWyo01XDM06r/3eu7SP4J6VMATaKgya4X+JBu/AFqULL+yrJB6s?=
 =?us-ascii?Q?p1wwG+BMwsxn4zhsoeqEpo5/RZn4zE5qvN+5C+jszBo0AWEvp0PVaWLPJrHT?=
 =?us-ascii?Q?bTlyVmn+lJ3l24jh36RKPyVxOuNP2Gz1UXp+9qJHi2v+Bll0eHuHCFeuMP3l?=
 =?us-ascii?Q?2OCWnRW1K49rmGQ7HXsxjxVz4ju3QDNbza/92rJjiJWoQ1GmsP55uWAX7HYo?=
 =?us-ascii?Q?col67KPpg+yh5DkP0kfNXaEfiwTATdBwHwHvzSG6Wqbdlp2UylebQxhE/ksg?=
 =?us-ascii?Q?2soTJzHWvUeVHOMn0pHe/wsLgrLtocPV0j3UQ6B2es9kr0hg/ok4WM66CMba?=
 =?us-ascii?Q?dOORsvNKikTEdd9iAppTft9R3eXQ2tYy3rZMb2n1CZ25vxuZJuEiRHYnfwJR?=
 =?us-ascii?Q?X6J1oIg7/hggRx+hIIyb2cHmbw+iy7zNgJnq+gGGZzc0Q9R2D61jUcj5+3Bc?=
 =?us-ascii?Q?dajeFhQa8+qvkLTTXm/1Ni+lMZRPgXNJPfvW87UohN1X8fDiC7PTRMW+dMYd?=
 =?us-ascii?Q?/TdhNS9QTo7EACsFScJGc7XdnTjLnhz4trps8X+s0iUQqCwwgb+5uCVqG5zX?=
 =?us-ascii?Q?yBLGQg4EgDvlNNmI9BPAJRqa66YbWY0Zjnym1+LiB9BsFOf9SM8in3ieHn15?=
 =?us-ascii?Q?iTgwooLggNIRYenIDQ+aaXSITpe5NRpQgtoT1twhno8am+ejLtEK91BmRg9q?=
 =?us-ascii?Q?ejisB0C7gapeu/2VIjXBwLLzXZqiCsugTtgywP0T7u/0TOvFT/ZJTdiuFA1t?=
 =?us-ascii?Q?8tQ1OFAyAViKuKCBZiJQKByaMTu3SHMEORBRw0zMsghmXLCTFmBynRvUjQbK?=
 =?us-ascii?Q?v0kAXTBnYmM/geDupvKS30uZCB53zj9VrqiLA+MWQfQSxgh1VZ+xXKSUDkWd?=
 =?us-ascii?Q?0vQCn4wq1I6m2Hcvb7LcLfGUH0YfjKKRJmLsAeMgFH9J1wvUu0eW2pNlNaP5?=
 =?us-ascii?Q?Fg0rLyhUqkCQLGscbqYvWyEco/IhONHss6QCPVxzyPH8lhU4kt55TigUQXfZ?=
 =?us-ascii?Q?gqbFfABvUU49PCRTCzCI3kaEnZzQBUDD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Htx6iceJ0tEjNfga3omOSiDqiaQN5hqwIfeEXz1fWiwJy6jQtdp1LM4v50NC?=
 =?us-ascii?Q?du8PnZVCV8fGs0JqOkzfZe4PZT5py5BZEO1AjAuifXGOdZlserABj9MzTtqo?=
 =?us-ascii?Q?zT1DaE6WCBWBJ6GeQ2wJ54t1KBTrnmfyS216UQ3jgvu3MZMpBvyO/NV3VTS8?=
 =?us-ascii?Q?OiqdwNk0Uj1tCbDgKS6MGrovUym1ZR3s8RJBzlTDc3TED52tSjyRRWgoRYMp?=
 =?us-ascii?Q?04LUuFtjbXfAYel9ZVvrf+S77riZI7iVfgGJJlWu0XNAZVib+2exp0nUf3di?=
 =?us-ascii?Q?orjhrHYidq5nfB/P1BdFswxAwfwplrtozZOHg9dFlVP8U095kFc8SxdOeoJK?=
 =?us-ascii?Q?/qJTlqAdqxEG/UfDz/+3/r7HztkTDacpSk9PGIvr2iQKWwNgyqDdLtk5SNTZ?=
 =?us-ascii?Q?4okkByMtk6oTWgpeZukgsD8xJOtCq/eWPM+AtLoRMe2BQzsLsgChTuKMVOe1?=
 =?us-ascii?Q?3k6D6YR9cnJqwaQkN8GY7Mq894a9zL6OKIFlfg201CBQXsoJqvfnUTTsW1fI?=
 =?us-ascii?Q?BjETMHwXK5CwAqH3dOdwPxRUHWOWC0i1piJqPiS5WyRVQdWZAuX2Y1i9qi5x?=
 =?us-ascii?Q?qLtKQyvbUIDCJtYBNaK6t3BVmE1GagshRx8wfYkjCGstmZUCozwGW1Nl0yC5?=
 =?us-ascii?Q?qYgaGH43nIJyrvii7Tr/IOSyNVmn46Zwh/vhw6S+2J8byGlyC3Tke4kkp8QC?=
 =?us-ascii?Q?0DnxDCm01DVkdoMIWFjcOHOOLI0zkjHHfGk9tFLR958pbV8qLqS57IgZqUg1?=
 =?us-ascii?Q?X1FlL7g1kBWerXCwNX2bZAL7IbczpMFwaDlJJbtwYaj7CaT/0Q0rCeTyheqv?=
 =?us-ascii?Q?AzQ6BPfClTuYXDd+7DmV0N/ZE4BC7c5w1styUFaJxio9DYoZ1B0tbVoQbCnw?=
 =?us-ascii?Q?mHBoGQqyhYXTo/jK1j4dVvwosw135xuHSv9XVRTwGt6tQDUrAIVZt35QqXtk?=
 =?us-ascii?Q?HtLKDQk2oneBzKFt6b7VrGzfjcmZl+efDFhBf7BAbz3ZxSxpVbhZwiEDl4UJ?=
 =?us-ascii?Q?Bpioi65azvOpZTbfRiuOgV4fNvK/29HfPqYmXnh++wwdflTDqINmKlIvoEMZ?=
 =?us-ascii?Q?EIL9ePOB3PDymr/shz9txOvsz+T/cDxL+n6U9+VoyRncQAoe1973rT5JQFat?=
 =?us-ascii?Q?6QL4HDmEladSotdrgsNjbuOf3vvP/gWaYtKuXwK5MiHbf9PJZoR3xEMOoP7Y?=
 =?us-ascii?Q?UgxJBiIydHyIBYQgVvvvn+TF1YbiziACrZ1TgBuDTcTRocJXVRVJreZjtfb6?=
 =?us-ascii?Q?gNSriKaZtku95JMbuX8deqpQ49VyLUeAOinEu5COr5myw6Rd0G8pO1wUH8I3?=
 =?us-ascii?Q?u33yEpCAXdJ/XK9VFm8MXz2cYV5Vc1XpCnZDYdIhx28ymwSSKbK/G6AJ0+kA?=
 =?us-ascii?Q?Gbj9xkeYnqyx3RM/+fqJGVEOof3hlfeHnoC2qBSlSxbjn9eG3Wvw+8GkLYt/?=
 =?us-ascii?Q?MvXUF6P8rk+yROM3JS6KOBrI6qSJ90N8mSW3Vr8eW4ik+lwyhPkq6y9LLtLF?=
 =?us-ascii?Q?fGZvSdR+1MelR1fI6GCuJMwmHD06glNWR70RtNKwuGSE1l9LamP0RQMJe3dR?=
 =?us-ascii?Q?hh5uLMWvFzqGd4opj0ssYG+rlDS+lXRMCQoqD9EhHtPVEve2f49GZ74PpNgT?=
 =?us-ascii?Q?Fog7Gi2uM/cbp/ShAZhw2N+UZbqe1FVNOi8MuwuPQitw?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2627dd03-1857-4720-0466-08de2ddd87b1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:02.4818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k0B2dbd8IULuRpOuI6uaPJ1sZROp71/C9IhiJxmouf2q2E1GzyRLVdlUet0JknH6S/03RTXtQghyvkAjXeZ/Ag==
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

On MST links the symbol alignment and SSC have a BW overhead, which
should be accounted for when calculating the required stream BW, do so
during mode validation for an uncompressed stream.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index e4dd6b4ca0512..0db6ed2d9664c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1458,6 +1458,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 	const int min_bpp = 18;
 	int max_dotclk = display->cdclk.max_dotclk_freq;
 	int max_rate, mode_rate, max_lanes, max_link_clock;
+	unsigned long bw_overhead_flags =
+		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
 	int ret;
 	bool dsc = false;
 	u16 dsc_max_compressed_bpp = 0;
@@ -1491,7 +1493,8 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
 					       max_link_clock, max_lanes);
 	mode_rate = intel_dp_link_required(max_link_clock, max_lanes,
 					   mode->clock, mode->hdisplay,
-					   fxp_q4_from_int(min_bpp), 0);
+					   fxp_q4_from_int(min_bpp),
+					   bw_overhead_flags);
 
 	/*
 	 * TODO:
-- 
2.49.1

