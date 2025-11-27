Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D7EC8FC62
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:51:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC9B10E869;
	Thu, 27 Nov 2025 17:51:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SyD2Kz1C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8F9110E864;
 Thu, 27 Nov 2025 17:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265876; x=1795801876;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=idaBxZ6zCz43ZErDeqtr0YrSuSzLfEW/QdnDrdQKUJM=;
 b=SyD2Kz1Cw03AQFiMCC/XvxF1SWg0oWBZd1jZXm8Z6VQCk+SgIPlQdVrV
 /LmQKAa2a4LdriIcEIQXTxMjggsBFflOvl0RCcJ0DX12NIMDUqzQhvFFM
 Dc6ToVeTiT/sRaO+juqZxzFeRt98UgIvOsXDwwiW7KR3lD6vz6gTLml54
 p7XOubQuqwTS99pNXa8Wou/FuFZi1Jrm4Dd6uBbWnweiqPWgmR1D+LkGF
 s4AjCGonN3ZYZAW9XbPf2/gkIHR2nPy3k6DRGSpAqilCQ4PRP3coeQTYz
 QaihRdxkimG1h1jYJBLOZtCGwj/at+4jn9N85xLeazYDpl4RrO4V/k9pZ Q==;
X-CSE-ConnectionGUID: 6cPYgF9yQKS1EWa3xd1D2w==
X-CSE-MsgGUID: 67sE5sY6TVuo+0ZrCr36DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66203962"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="66203962"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:16 -0800
X-CSE-ConnectionGUID: 24jEC3DKQFuFc16tXADgVg==
X-CSE-MsgGUID: cHN6KsacRXO6sc3diMv/OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="198230171"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:51:15 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:14 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:51:14 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.23) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:51:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rqfr6bSPq2jpA3MaC30DTcQAOaGFkpQvsi5/+e6p3MYwO00b1xDGwNrxD8FpG2j4sh3XwAi5Gpf6yUi8ykqGSmkyAI2dQPEoMSE+CzEH1SwKGbzwf8mWHBDPvyZLJY4J8AhI1In6F4y5SwU2oCH95ckoRtmm3/vyJsIXC/YSMpEjcbY7Sl01BIVrni1rkKwBaUcwX53MUFJU2Tv+4xhxIe17+wAFnKAeU1nm/kwykc4grBiMiiusZPQz6X35k1o7rL5jwf4qEeVIQT/Un6CebOe2I+xtrXetzFn8UiXzdOx40zLZeFUh//LcXncjxVkocqQhVcYw97aWR//+TSrTMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ZNOzCJwXThOO3KTfCC/DXYTyFUBxMsY6li6dSoTzfI=;
 b=AkM2UJ8GUI/UTxY3s+zOKrSHh7HXRstAkuyVe8/XOv+wrhM0KVzrH99F/my1s4MOTvspptY+1KUj54iw91R3Y4UGGGcUzoeHfK0P6xnfDnTSWtX6IBjcntNh9Cd8MrwmjHpCAS65FG/8/3sOBGoFLtZW7GJQ5rdHQqUllI0C6ZtDK+EebEg8358G9yjOz1ucbkZh7y0VknPEqmyde0U27ufdKlQqIydfPfumEWDvq8WEVug/cDL7V0NKNBSwjXTsCibBgNRfcOon2c2SC7Dho305C+WgsB5v2fSHnG1TjEJjzexYphwat2hhFM3LW+pu2sl6T1QlLoN9evWhnwVZRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7842.namprd11.prod.outlook.com (2603:10b6:610:128::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.12; Thu, 27 Nov
 2025 17:51:06 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:06 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 13/50] drm/i915/dp: Drop unused timeslots param from
 dsc_compute_link_config()
Date: Thu, 27 Nov 2025 19:49:46 +0200
Message-ID: <20251127175023.1522538-14-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 4a58bfc1-d94c-4032-c2de-08de2ddd89f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CGjNf8JSALW9mgaPDvY6e0H6xfNLBjV7nHwlofxWqruh/QAzSt1qDhvaTBYT?=
 =?us-ascii?Q?E46tmvn0xVD+JoLB8DSz8drJV+P4DZN/biZh3TBNALvDTMAazgPGnhyoYsIt?=
 =?us-ascii?Q?TtvvzOKCyY8YIo8oqlVH8CA56SvIC+b9WHLTaSP1GLMT2BcEi45z9YJyKw9c?=
 =?us-ascii?Q?hQkfiQp4E4BgNXFg15fvOfuq/e3QEkGVWCXKqQ6RIOr4w6PxMbgnFOYuLw88?=
 =?us-ascii?Q?Por59Bzo3WHGx53GY5VCx9elRakaLn8pLo1gZcy582ECUE2MKhVZZG8X3r5F?=
 =?us-ascii?Q?EYlKfS4bJaP8dPBKVCJjNzNbJSHnP3UZKMoyTswyHHRvMymN8n3N128dgkKe?=
 =?us-ascii?Q?YBdCJVLSTllkqtK+hBhmZ/IaKXmZ1sQjg7Rip6wwurllyXV/lId+7w9zoaMp?=
 =?us-ascii?Q?/+BJVE5cruNabX1C/enj6N+NEnMRwkkO/E2np1Q1Fcvrp1sHPdi/4vFLyn9O?=
 =?us-ascii?Q?snU9O0C9CfvR7w/7B21pNTLS0YrKqeU+a7ZZHNnhTTshsclgBXo8YbN6ittM?=
 =?us-ascii?Q?nNR1f8DzcouoApsz3Zp6ATXr2i87ZpCf9j5ZWOWVNlAY8/YjXETtj49bG1d/?=
 =?us-ascii?Q?5e2/Y3WvZG43YdFWGAAoLUPL/P43pIZbdvxjFUy1fp3CP/yCl5QQ/bg28aNb?=
 =?us-ascii?Q?jLKG6eJ6ttwSFl3/DLgCmbIo2krHrEAi5QuTdP0sr69CcJmk6PERa4nTx/U8?=
 =?us-ascii?Q?uTDfyoQgRl0DZnwD4cCsgqNMyKXY5yyZ2DFVSckEBpAajxGIT8UnRp0t3h/s?=
 =?us-ascii?Q?uEjUCtRzjxEkiaPAMOFClyczeqbmNYfgEFrAEGkOsFaimAf5ZTbJRscKR5/E?=
 =?us-ascii?Q?ubiU2aDV7U5WLP69RgeLs0rao5u3QoDLCvgTw8LVS0ELWPyA2sv+HH8lzuAp?=
 =?us-ascii?Q?Zw+2h55J83CmuBrbf2/jcT64iGFnTMwtMbwUH+pDYQ32UMbYqLMT3aczDxnW?=
 =?us-ascii?Q?2cWNIpNf3ILek9keD1QjRwaEPvyUr7SGvp8uN0CmGQnwDFv+PfpvskXK5LeJ?=
 =?us-ascii?Q?poz196IMxhird8fleC82oKO/Sx6RL7KIdSLay7kgvPubc9G+cve/LS2PcZb2?=
 =?us-ascii?Q?PkICs5kybNXY25W8VE+k03BwESAiMeaWNhmNvPjMJCle4bkFjvw0PWBvzEBU?=
 =?us-ascii?Q?Wnthb7mDjcxdNWXZzjGg8gjwn5+HP5mDxNPxbXnoyy6Mv42QY21xqcD9oUl5?=
 =?us-ascii?Q?+ezhhL+jaZ6Bec8NHJNXtOq4FIFGLoZRFXBHXev0Uh8QIlDnfsoxqY0umC8A?=
 =?us-ascii?Q?7TSiY9Om0LiewvVrDzKNuDfvuI6YMn+Sgrqlyv52xjRJjpSFmacPFHPmcXPj?=
 =?us-ascii?Q?NlKzRUCP+36z4r7netdUYqqsnF3GtmLWhvs+jrBiS2Sp1A/9Qbn6wj9dlxsl?=
 =?us-ascii?Q?QCXft1+seJuBxN3UFbCTXfpZasJEQrELklOqVaFoUKgisYMouqx1Lrr5Z/F8?=
 =?us-ascii?Q?MDzJVI+Q52YTKDlhP2NFSuLBMgn+8DT2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yqzA0P6FHvd7m9cDpBSZphd4dw7ijNvkpP+fHh84VKsDBMamwbBjGs3+3raO?=
 =?us-ascii?Q?17E49TXR5TbHMXkEBJ6k71nCYtppws6DZ8V+GK2l5VWuApQncaX442DnvIex?=
 =?us-ascii?Q?GXZGuRDHNfjQXtJOsCU/GfUM2aeuhUvRKoceYb54Tofx6BTnVKCpXR3Z6gzq?=
 =?us-ascii?Q?1fUmel2tGU5RaDAdH7IkyR29fs/ZODBn77yObA24UKbPkScHLRGkkON2frv0?=
 =?us-ascii?Q?BsI7bsbVivXVaa8QK0VLaw6485KN/DSJKoSaQq4L/kaltAeVMCUlXEG2f4Be?=
 =?us-ascii?Q?0ThxEF5fjavnbYuB0yLIrHdv4cmH5dfCcPz6Yhoj5flmRXYMyMkw1WRWcOEp?=
 =?us-ascii?Q?xWrRR8f1w16OuwJ4fG3MDbmIk8RZmn7Nff9wrLnB+OLEmQZvLrsww5CqT5HK?=
 =?us-ascii?Q?LHGcwosPdd8znVwUs6CzXyqsqpzn9ZVKfoNsQF8YRcGKej2fK9quGPJcFre1?=
 =?us-ascii?Q?eoOhuHqMN+Hfoqt+8o/mcEmGm1IxtIE0FqsEh0Jnx3XoU4YXUui0hlCiQu4A?=
 =?us-ascii?Q?o9oV9xkSWb7Quk2K6RP7ikiVsrHRy3pVN0Qou+7d26ZTSlawacG/Up1DRybs?=
 =?us-ascii?Q?ZSQKKTd66gB3gjZpwGcYXt2BEbyFGIN+lDN/8li98To3CsfV4nT+Xd1hb7G8?=
 =?us-ascii?Q?SsFfprDPGS/qHsIQi1TeVlF1sZwzp+bZh//u9NRYWuEae2SBXa7yhyDce7al?=
 =?us-ascii?Q?yBGEIN3KPEuz6PmfXeeCT+r0WoKB5/xHsNppjl2uIq/HCEAlr6tWhZl9VK64?=
 =?us-ascii?Q?/7O6aThUAbWGnoMpF1DwSM9cNXOGxrwhu2N8evvvznK9PzMkZy7F1ePYjl5c?=
 =?us-ascii?Q?Q5Bqs2LlgO8t+U5mtg6b5s33ZhipfaArxg3o9NbLVdRIcD74tmB6JKYHJIix?=
 =?us-ascii?Q?f2A0bX0FlAcZXI4lU/OtzHE0ED3rhkEHafV0cLxahlUsAUwPNncYak+tRiOS?=
 =?us-ascii?Q?9xM3SeJ6Q/L3ctvdJhrFJHnlj7VpDQxNvNsUs/50qGBjvNqwFTqZW1l3El55?=
 =?us-ascii?Q?Ne4+VUVfv7Rhl9vnAxI0dtu1fsol5rEtYiZcZudDgtjCQAQDlX39q1IrNZ8M?=
 =?us-ascii?Q?wyAwiTJghvgofPWvKGVSAg93ZFLbGRTV0uD8m90f3zbW/PHWf4o7gHDnir8f?=
 =?us-ascii?Q?NY67ewQJ29Bl10chgSgAn2MaKkeYCHB2Z8qGa/4weAXvtIW376CZla81+fLM?=
 =?us-ascii?Q?KZ3r2Y7v9DNy99h2qrjCKBhMfN32ZkYzZCqEZ+mU2jxNqBwMDgmaXxsH006O?=
 =?us-ascii?Q?EDwdu1PWSrl49PnZI5QQD2QZWcxWp10sDGjYm7WRoEHnxedeDNr0cQ2wreV/?=
 =?us-ascii?Q?tbvNwTaEbffFCd+NLS9xT+PA7RtaoNGn/3XZaQlxBLaGYQT7tcuUo4XxafA9?=
 =?us-ascii?Q?Lpqj+bIaIz7Skemj//SQBOvbgvBxJ+Sdqoymh32kSf84AiWAqH8hlMMRzdVE?=
 =?us-ascii?Q?lQZggzdn4+bGxUUAlnDl5v2vPEN3C33X3QhPsn1itFBoam+mMKnCIpJsb0Bo?=
 =?us-ascii?Q?xZufxcba4WHLlUQwhXGlbrJGUNZe6HS+WSB//tIiq7maVee6ZcEBuNzGfmiS?=
 =?us-ascii?Q?2phXg1mz+uZ9amiA3u3VCEGcs5BPC27Cdryetxib2itjwa2ob0ZK9lKLTyiG?=
 =?us-ascii?Q?sFVQLv/PtqQ6vNMgpua63kgPUNlyyCzvV/KL9ewJiEiN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a58bfc1-d94c-4032-c2de-08de2ddd89f5
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:06.2010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ojI4b4IbD8cg/TJDso8dk7SVZ8dQPGX2u3WDaGnO1gsMs1Cfe9UzmpAOvvRCpwGC023IH/IWfM00bCNrzWgAjg==
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

Drop the unused timeslots parameter from dsc_compute_link_config() and
other functions calling it.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 18 +++++++-----------
 1 file changed, 7 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index def1f869febc2..000fccc39a292 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2046,8 +2046,7 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				   struct intel_crtc_state *pipe_config,
 				   struct drm_connector_state *conn_state,
 				   const struct link_config_limits *limits,
-				   int dsc_bpp_x16,
-				   int timeslots)
+				   int dsc_bpp_x16)
 {
 	const struct drm_display_mode *adjusted_mode = &pipe_config->hw.adjusted_mode;
 	int link_rate, lane_count;
@@ -2240,8 +2239,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 				      struct intel_crtc_state *pipe_config,
 				      struct drm_connector_state *conn_state,
 				      const struct link_config_limits *limits,
-				      int pipe_bpp,
-				      int timeslots)
+				      int pipe_bpp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
@@ -2269,8 +2267,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 					      pipe_config,
 					      conn_state,
 					      limits,
-					      bpp_x16,
-					      timeslots);
+					      bpp_x16);
 		if (ret == 0) {
 			pipe_config->dsc.compressed_bpp_x16 = bpp_x16;
 			if (intel_dp->force_dsc_fractional_bpp_en &&
@@ -2327,8 +2324,7 @@ int intel_dp_force_dsc_pipe_bpp(struct intel_dp *intel_dp,
 static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 					 struct intel_crtc_state *pipe_config,
 					 struct drm_connector_state *conn_state,
-					 const struct link_config_limits *limits,
-					 int timeslots)
+					 const struct link_config_limits *limits)
 {
 	const struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
@@ -2340,7 +2336,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 
 	if (forced_bpp) {
 		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
-						 limits, forced_bpp, timeslots);
+						 limits, forced_bpp);
 		if (ret == 0) {
 			pipe_config->pipe_bpp = forced_bpp;
 			return 0;
@@ -2358,7 +2354,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 			continue;
 
 		ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
-						 limits, pipe_bpp, timeslots);
+						 limits, pipe_bpp);
 		if (ret == 0) {
 			pipe_config->pipe_bpp = pipe_bpp;
 			return 0;
@@ -2469,7 +2465,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 							     conn_state, limits);
 		else
 			ret = intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
-							    conn_state, limits, timeslots);
+							    conn_state, limits);
 		if (ret) {
 			drm_dbg_kms(display->drm,
 				    "No Valid pipe bpp for given mode ret = %d\n", ret);
-- 
2.49.1

